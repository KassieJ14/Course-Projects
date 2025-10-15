Use FableDB;


				-- FIXING VALUES IN COLUMNS --

-- Replacing "&{error}" with the appropriate value..

Update Books Set Title = Replace(Title, '&apos;','''')
Update Books Set Title = Replace(Title, '&amp;','&')
Update Books Set Title = Replace(Title, '&quot;','"')
Update Books Set Author_s = Replace(Author_s, '&apos;','''')
Update Books Set Awards = Replace(Awards, '&apos;','''')

Update Authors Set First_Name = Replace(First_Name, '&apos;','''')
Update Authors Set Last_Name = Replace(Last_Name, '&apos;','''')
Update Authors Set About_Author = Replace(About_Author, '&apos;','''')

Update Reviews Set Review = Replace(Review, '&apos;','''')
Update Reviews Set Review = Replace(Review, '&amp;','&')
Update Reviews Set Review = Replace(Review, '&quot;','"')

-- Changing Column Value:
Select * From Books;
Update Inventory Set Price = Round(Price,2);
Update Books Set Rating = Round(Rating,3);
Update Orders Set OrderStatus = Replace(OrderStatus, 'Delivered','Completed')


				-- DROPPING UNNECESSARY COLUMNS --

-- The following columns were dropped due to their irrelevance.
Alter Table Memberships Drop Column column1;
Alter Table Order_Items Drop column column1;
Alter Table Reviews Drop Column column1;
Alter Table Reviewers Drop Column column1;
Alter Table Shopping_Cart_Items Drop Column column1;
Alter Table Wishlist_Items Drop Column column1;
Alter Table Genres Drop Column ID;


-- The following columns were dropped to allow for querying oppurtunities later on.
Alter Table Order_Items Drop Column Price_item;
Alter Table Wishlist_Items Drop Column Price;
Alter Table Shopping_Cart_Items Drop Column Price;

				-- ADDING COLUMNS --

-- The following columns were not in the original tables.
Alter Table Orders Add OrderDate Date;
Alter Table Orders Add TotalAmount Float;
Alter Table Shopping_Carts Add TotalAmount Float;


				-- ADDING DEPENDENCIES BETWEEN TABLES --

-- Addresses Table --
Select * From Addresses;

Alter Table Addresses Add Constraint FK_AU_UserID
Foreign Key (UserID)
References Users (ID)
On Delete CASCADE
On Update CASCADE;

-- Authors --
Select * From Authors;

-- Books --
Select * From Books;

-- Genres -- 
Select * From Genres;

-- Displays the genre(s) for each book:
Select ID, Title, value as Genre From Books As G
Cross Apply String_Split(g.Genres, ',') as BookGenres;

-- Inventory --
Select * From Inventory;

Alter Table Inventory Add Constraint FK_IB_BookID
Foreign Key (BookID)
References Books (ID);

-- Membership Table --
Select * From Memberships;

-- Members Table --
Select * From Members;

Alter Table Members Add Constraint FK_MU_UserID
Foreign Key (UserID)
References Users (ID)
On Delete CASCADE
On Update CASCADE;

Alter Table Members Add Constraint FK_MM_Tier
Foreign Key (Membership_Tier)
References Memberships (Tier);

-- Orders Table --
Select * From Orders;

Alter Table Orders Add Constraint FK_OU_UserID
Foreign Key (UserID)
References Users (ID);

Alter Table Orders Add Constraint FK_OP_PaymentID
Foreign Key (PaymentMethod)
References Payment_Methods (ID);

Alter Table Orders Add Constraint FK_OC_CartID
Foreign Key (CartID)
References Shopping_Carts (ID)
On Delete CASCADE
On Update CASCADE;

-- Order_Items Table --
Select * From Order_Items;

Alter Table Order_Items Add Constraint FK_OO_OrderID
Foreign Key (OrderID)
References Orders (ID);

Alter Table Order_Items Add Constraint FK_OP_ProductID
Foreign Key (ProductID)
References Inventory (ID)
On Delete CASCADE
On Update CASCADE;

Alter Table Order_Items Add Constraint FK_OP_Price
Foreign Key (Price_item)
References Inventory (Price);

-- Payment_Methods Table --
Select * From Payment_Methods;

Alter Table Payment_Methods Add Constraint FK_PMU_UserID
Foreign Key (UserID)
References Users (ID)
On Delete CASCADE
On Update CASCADE;

-- Reviewers Table --
Select * From Reviewers;

-- Reviews Table --
Select * From Reviews;

Alter Table Reviews Add Constraint FK_RR_ReviewerID
Foreign Key (ReviewerID)
References Reviewers (ReviewerID);

Alter Table Reviews Add Constraint FK_RB_ReviewerID
Foreign Key (BookID)
References Books (ID)
On Delete CASCADE
On Update CASCADE;

-- Shopping Carts Table --
Select * From Shopping_Carts;

Alter Table Shopping_Carts Add Constraint FFK_SU_UserID
Foreign Key (UserID)
References Users (ID)
On Delete CASCADE
On Update CASCADE;

-- Shopping Cart ID Table --
Select * From Shopping_Cart_Items;

Alter Table Shopping_Cart_Items Add Constraint FK_SS_CartID
Foreign Key (CartID)
References Shopping_Carts (ID);

ALter Table Shopping_Cart_Items Add Constraint Fk_SI_ProductID
Foreign Key (ProductID)
References Inventory (ID)
On Delete CASCADE
On Update CASCADE;

-- Users Table --
Select * From Users;

Alter Table Users Add Constraint FK_AdressID
Foreign Key (AddressID)
References Addresses (ID);

-- Wishlist Users Table --
Select * From Wishlist;

Alter Table Wishlist Add Constraint FK_WU_UserID
Foreign Key (UserID)
References Users (ID)
On Delete CASCADE
On Update CASCADE;

-- Wishlist_Items Table --
Select * From Wishlist_Items;

Alter Table Wishlist_Items Add Constraint FK_WW_WishlistID
Foreign Key (WishlistID)
References Wishlist (ID)
On Delete CASCADE
On Update CASCADE;

Alter Table Wishlist_Items Add Constraint FK_WI_ProductID
Foreign Key (ProductID)
References Inventory (ID)
On Delete CASCADE
On Update CASCADE;

				-- ADDING CHECKS AND CONSTRAINTS --

-- Adding uniqueness constraints.
Alter Table Addresses Add Constraint unq_id Unique (ID);
Alter Table Authors Add Constraint unq_authorid Unique (ID);
Alter Table Books Add Constraint unq_bookid Unique (ID);
Alter Table Genres Add Constraint unq_genid Unique (ID);
Alter Table Inventory Add Constraint unq_prodid Unique (ID);
Alter Table Members Add Constraint unq_memid Unique (ID);
Alter Table Memberships Add Constraint unq_membtier Unique (Tier);
Alter Table Orders Add Constraint unq_orderid Unique (ID);
Alter Table Payment_Methods Add Constraint unq_id_no Unique (ID, CardNumbers);
Alter Table Reviewers Add Constraint unq_rvid Unique (ReviewerID);
Alter Table Reviews Add Constraint unq_rvwid Unique (ID);
Alter Table Shopping_Carts Add Constraint unq_cart Unique (ID);
Alter Table Users Add Constraint unq_name_id Unique (ID);
Alter Table Wishlist Add Constraint unq_wl Unique (ID);

-- Adding size constraints.
Alter Table Inventory Add Constraint Qnt_Available_Check Check (Stock > 0);
Alter Table Members Add Constraint Points_Balance Check (Credit_Balance >= 0);
Alter Table Orders Add Constraint Status_Check Check (OrderStatus In ('Completed','Shipped','Delivered','Refunded'));
Alter Table Order_Items Add Constraint Qnt_Validity Check (Quantity <= Inventory.Stock);


				-- INSERTING VALUES INTO COLUMNS -- 

-- Calculating Total Amounts For Orders:
Create View OrderAmounts As
Select OrderID, Sum(Order_Items.Quantity*Price) As TotalAmount From ProductDetails
Join Order_Items
On ProductDetails.Product_ID = Order_Items.ProductID
Group By (OrderID);

UPDATE Orders
SET TotalAmount = OrderAmounts.TotalAmount
FROM OrderAmounts
WHERE Orders.ID = OrderAmounts.OrderID; 


-- Calculating Total Amounts For The Shopping Carts:
Create View ShoppingCartTotals As
Select CartID, Sum(Price) As TotalAmount From ProductDetails
Join Shopping_Cart_Items
On ProductDetails.Product_ID = Shopping_Cart_Items.ProductID
Group By (CartID);

Select * From Shopping_Carts;

UPDATE Shopping_Carts
SET TotalAmount = ShoppingCartTotals.TotalAmount
FROM ShoppingCartTotals
WHERE Shopping_Carts.ID = ShoppingCartTotals.CartID; 


-- Setting Cart Amount To 0 Where Null (No Items In Cart):
UPDATE Shopping_Carts
Set TotalAmount = 0
Where TotalAmount Is Null;


-- Creating A Temporary Table That Holds The Dates For When Orders Were Placed
Create Table Order_Dates(
    ID int,
	Order_Date Date);

-- Inserting Dates Into This Temporary Table:
Insert Into Order_Dates(ID, Order_Date)
Values
	(1, '2025-01-18'),	    (2, '2025-04-05'),	(3, '2023-06-25'),	(4, '2024-06-17'),	(5, '2025-01-02'),	(6, '2024-07-26'),	    (7, '2023-10-02'),	(8, '2025-01-24'),	(9, '2024-09-15'),	(10, '2023-04-19'),	(11, '2023-01-30'),	    (12, '2025-02-07'),	(13, '2023-01-14'),	(14, '2024-12-21'),	(15, '2023-02-19'),	(16, '2023-07-22'), 	(17, '2023-11-19'),	(18, '2023-06-10'),	(19, '2023-12-07'),	(20, '2023-08-03'),
	(21, '2024-07-30'),	    (22, '2023-08-23'),	(23, '2023-10-07'),	(24, '2023-09-11'),	(25, '2025-04-25'),	(26, '2023-10-06'),	    (27, '2023-11-01'),	(28, '2024-02-23'),	(29, '2023-08-21'),	(30, '2023-03-03'),	(31, '2024-05-24'),	    (32, '2024-08-25'),	(33, '2025-04-30'),	(34, '2025-04-04'),	(35, '2023-12-08'),	(36, '2023-09-14'),	    (37, '2024-03-28'),	(38, '2023-06-20'),	(39, '2023-02-27'),	(40, '2025-01-20'),
	(41, '2023-10-17'),	    (42, '2025-01-27'),	(43, '2024-11-13'),	(44, '2023-05-09'),	(45, '2023-11-30'),	(46, '2023-10-07'),	    (47, '2025-01-30'),	(48, '2024-06-23'),	(49, '2024-06-10'),	(50, '2025-01-28'),	(51, '2023-07-15'),	    (52, '2024-10-19'),	(53, '2024-12-03'),	(54, '2024-04-21'),	(55, '2024-07-24'),	(56, '2023-11-01'),	    (57, '2024-04-23'),	(58, '2023-05-09'),	(59, '2023-03-31'),	(60, '2023-07-10'),
	(61, '2023-10-18'),	    (62, '2024-04-04'),	(63, '2024-04-13'),	(64, '2023-06-05'),	(65, '2024-04-06'),	(66, '2023-12-04'),	    (67, '2024-06-12'),	(68, '2024-06-07'),	(69, '2023-08-18'),	(70, '2025-03-12'),	(71, '2024-08-21'),	    (72, '2023-05-29'),	(73, '2025-03-01'),	(74, '2023-05-07'),	(75, '2023-11-22'),	(76, '2023-01-23'),	    (77, '2025-03-05'),	(78, '2024-06-26'),	(79, '2024-08-14'),	(80, '2024-08-08'),
	(81, '2024-05-20'),	    (82, '2023-10-25'),	(83, '2023-09-14'),	(84, '2024-10-14'),	(85, '2024-12-13'),	(86, '2024-12-11'),     (87, '2024-04-29'),	(88, '2023-04-17'),	(89, '2025-01-11'),	(90, '2023-05-02'),	(91, '2023-02-16'), 	(92, '2023-11-23'),	(93, '2024-07-19'),	(94, '2023-10-17'),	(95, '2025-04-18'),	(96, '2023-07-16'), 	(97, '2024-07-05'),	(98, '2023-08-23'),	(99, '2024-05-22'),	(100, '2024-06-26'),
	(101, '2024-06-05'),	(102, '2024-07-28'),	(103, '2024-08-31'),	(104, '2023-08-29'),	(105, '2023-06-21'),	(106, '2023-12-31'),	(107, '2024-07-25'),	(108, '2023-02-08'),	(109, '2025-03-02'),	(110, '2024-08-24'),	(111, '2025-01-24'),	(112, '2024-03-30'),	(113, '2023-05-04'),	(114, '2023-06-06'),	(115, '2024-09-09'),	(116, '2023-10-03'),	(117, '2024-08-14'),	(118, '2025-04-24'),	(119, '2023-12-22'),	(120, '2024-01-04'),
	(121, '2025-05-31'),	(122, '2024-07-14'),	(123, '2024-02-27'),	(124, '2024-07-19'),	(125, '2025-04-30'),	(126, '2025-04-20'),	(127, '2023-01-15'),	(128, '2023-09-26'),	(129, '2024-08-05'),	(130, '2024-01-11'),	(131, '2025-05-26'),	(132, '2023-06-03'),	(133, '2024-05-26'),	(134, '2023-07-27'),	(135, '2023-03-04'),	(136, '2024-05-10'),	(137, '2023-10-08'),	(138, '2024-11-16'),	(139, '2025-05-02'),	(140, '2025-01-01'),
	(141, '2024-05-03'),	(142, '2024-11-17'),	(143, '2024-02-29'),	(144, '2025-04-02'),	(145, '2023-03-26'),	(146, '2023-03-05'),	(147, '2023-06-27'),	(148, '2024-03-26'),	(149, '2024-12-17'),	(150, '2024-04-17'),	(151, '2023-03-22'),	(152, '2023-09-04'),	(153, '2025-02-05'),	(154, '2024-07-03'),	(155, '2024-08-15'),	(156, '2024-12-18'),	(157, '2024-12-25'),	(158, '2023-08-06'),	(159, '2024-10-14'),	(160, '2023-01-22'),
	(161, '2024-11-09'),	(162, '2025-05-05'),	(163, '2024-11-10'),	(164, '2024-10-05'),	(165, '2025-04-18'),	(166, '2024-04-16'),	(167, '2023-09-26'),	(168, '2024-10-26'),	(169, '2024-12-28'),	(170, '2024-06-26'),	(171, '2023-07-16'),	(172, '2023-04-01'),	(173, '2025-05-10'),	(174, '2025-04-26'),	(175, '2023-12-28'),	(176, '2024-05-02'),	(177, '2023-09-24'),	(178, '2024-06-22'),	(179, '2024-05-30'),	(180, '2023-07-31'),
	(181, '2025-04-02'),	(182, '2023-02-05'),	(183, '2023-07-18'),	(184, '2023-11-06'),	(185, '2024-09-06'),	(186, '2024-03-07'),	(187, '2024-05-16'),	(188, '2024-02-09'),	(189, '2024-09-28'),	(190, '2024-02-01'),	(191, '2023-12-02'),	(192, '2024-10-21'),	(193, '2023-07-22'),	(194, '2024-07-21'),	(195, '2024-05-05'),	(196, '2025-03-23'),	(197, '2023-02-24'),	(198, '2024-09-23'),	(199, '2023-05-21'),	(200, '2025-05-14'),
	(201, '2024-02-20'),	(202, '2023-08-01'),	(203, '2023-02-23'),	(204, '2023-12-11'),	(205, '2023-07-11'),	(206, '2024-09-03'),	(207, '2024-10-21'),	(208, '2024-06-06'),	(209, '2023-02-09'),	(210, '2023-01-09'),	(211, '2024-09-29'),	(212, '2023-06-19'),	(213, '2023-06-29'),	(214, '2023-09-09'),	(215, '2024-11-24'),	(216, '2024-03-17'),	(217, '2023-11-07'),	(218, '2024-09-06'),	(219, '2025-05-24'),	(220, '2024-07-21'),
	(221, '2023-11-15'),	(222, '2023-12-01'),	(223, '2024-09-28'),	(224, '2024-05-02'),	(225, '2025-01-27'),	(226, '2023-01-30'),	(227, '2023-12-15'),	(228, '2023-02-04'),	(229, '2023-10-08'),	(230, '2023-08-03'),	(231, '2024-06-24'),	(232, '2023-02-14'),	(233, '2023-03-02'),	(234, '2023-08-09'),	(235, '2023-11-10'),	(236, '2024-11-02'),	(237, '2024-09-16'),	(238, '2023-10-29'),	(239, '2023-10-31'),	(240, '2023-03-10'),
	(241, '2023-04-21'),	(242, '2024-01-27'),	(243, '2024-01-05'),	(244, '2023-08-20'),	(245, '2023-02-18'),	(246, '2024-11-20'),	(247, '2024-06-08'),	(248, '2023-11-28'),	(249, '2023-04-09'),	(250, '2024-05-11'),	(251, '2024-03-01'),	(252, '2025-03-16'),	(253, '2024-03-19'),	(254, '2023-11-20'),	(255, '2024-08-31'),	(256, '2025-05-05'),	(257, '2025-04-03'),	(258, '2023-12-17'),	(259, '2024-10-19'),	(260, '2023-12-18'),
	(261, '2024-10-19'),	(262, '2023-02-12'),	(263, '2024-02-10'),	(264, '2023-11-12'),	(265, '2023-10-22'),	(266, '2025-02-22'),	(267, '2023-02-20'),	(268, '2023-11-27'),	(269, '2023-12-06'),	(270, '2023-04-04'),	(271, '2023-06-29'),	(272, '2023-03-26'),	(273, '2023-01-19'),	(274, '2025-03-20'),	(275, '2023-01-13'),	(276, '2023-09-01'),	(277, '2023-07-04'),	(278, '2025-01-29'),	(279, '2024-03-22'),	(280, '2025-01-31'),
	(281, '2024-06-10'),	(282, '2024-02-12'),	(283, '2024-05-23'),	(284, '2023-01-15'),	(285, '2025-03-17'),	(286, '2023-11-27'),	(287, '2023-11-30'),	(288, '2023-02-25'),	(289, '2023-10-02'),	(290, '2024-03-31'),	(291, '2024-08-12'),	(292, '2023-05-23'),	(293, '2024-01-26'),	(294, '2023-08-16'),	(295, '2024-12-19'),	(296, '2024-07-20'),	(297, '2023-05-24'),	(298, '2024-05-30'),	(299, '2023-05-06'),	(300, '2023-10-02'),
	(301, '2023-05-01'),	(302, '2025-03-09'),	(303, '2023-05-29'),	(304, '2023-07-03'),	(305, '2025-01-24'),	(306, '2024-09-23'),	(307, '2023-02-15'),	(308, '2024-11-21'),	(309, '2024-05-28'),	(310, '2025-03-27'),	(311, '2023-01-11'),	(312, '2024-11-18'),	(313, '2023-06-05'),	(314, '2025-05-13'),	(315, '2023-01-27'),	(316, '2024-01-06'),	(317, '2024-10-14'),	(318, '2025-02-21'),	(319, '2025-01-07'),	(320, '2024-04-09'),
	(321, '2023-09-20'),	(322, '2025-05-16'),	(323, '2025-03-30'),	(324, '2024-05-01'),	(325, '2023-09-24'),	(326, '2024-03-09'),	(327, '2023-08-18'),	(328, '2023-10-29'),	(329, '2024-12-18'),	(330, '2024-06-16'),	(331, '2025-02-08'),	(332, '2023-01-10'),	(333, '2024-01-22'),	(334, '2025-01-08'),	(335, '2025-03-08'),	(336, '2025-03-30'),	(337, '2024-07-10'),	(338, '2024-05-29'),	(339, '2023-11-09'),	(340, '2024-06-29'),
	(341, '2023-01-17'),	(342, '2024-10-20'),	(343, '2023-01-31'),	(344, '2023-01-12'),	(345, '2024-01-03'),	(346, '2024-10-26'),	(347, '2025-04-19'),	(348, '2024-11-25'),	(349, '2023-09-13'),	(350, '2023-12-19'),	(351, '2024-03-06'),	(352, '2024-08-10'),	(353, '2025-03-28'),	(354, '2024-12-28'),	(355, '2024-11-03'),	(356, '2023-03-04'),	(357, '2023-10-20'),	(358, '2023-08-26'),	(359, '2023-11-23'),	(360, '2025-03-31'),
	(361, '2024-12-03'),	(362, '2025-04-11'),	(363, '2024-04-01'),	(364, '2024-05-16'),	(365, '2023-07-07'),	(366, '2023-03-31'),	(367, '2024-11-15'),	(368, '2024-09-28'),	(369, '2023-08-21'),	(370, '2024-05-30'),	(371, '2023-04-28'),	(372, '2023-07-27'),	(373, '2023-11-05'),	(374, '2023-10-26'),	(375, '2025-04-08'),	(376, '2024-06-30'),	(377, '2023-12-08'),	(378, '2023-11-19'),	(379, '2024-11-30'),	(380, '2025-03-07'),
	(381, '2024-11-17'),	(382, '2024-11-11'),	(383, '2023-03-04'),	(384, '2024-06-20'),	(385, '2024-10-10'),	(386, '2025-02-01'),	(387, '2024-10-12'),	(388, '2024-03-24'),	(389, '2023-05-10'),	(390, '2024-11-27'),	(391, '2025-01-25'),	(392, '2025-01-30'),	(393, '2024-12-26'),	(394, '2023-01-23'),	(395, '2023-07-04'),	(396, '2023-05-25'),	(397, '2023-04-11'),	(398, '2025-04-30'),	(399, '2025-01-07'),	(400, '2024-01-16');

-- Updating the Orders Table With These Columns:
UPDATE Orders
SET OrderDate = Order_Dates.Order_Date
FROM Order_Dates
WHERE Orders.ID = Order_Dates.ID;