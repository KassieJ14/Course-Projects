Use FableDB;


-- Temporary View For Profiles:
Create View TempView_UserInfo1 AS
Select Users.ID, Users.Username, Users.First_Name, Users.Last_Name, Users.EmailAddress, Users.DOB, Addresses.Town, Addresses.Address
From Users
Join Addresses
On Users.ID = Addresses.UserID;


-- Viewing All Fable User Profiles:
Create View All_User_Profiles As
Select TV.ID As UserID, TV.Username, TV.First_Name, TV.Last_Name, TV.EmailAddress, TV.DOB, TV.Town, TV.Address, PM.CardNumbers as Stored_Card, PM.CardType
From TempView_UserInfo1 As TV
Join Payment_Methods As PM
On TV.ID = PM.UserID;

Select * From All_User_Profiles;


-- Viewing All Fable Member Profiles:
Create View All_Member_Profiles As
Select 
	UPs.UserID As UserID, UPs.Username, UPs.First_Name, UPs.Last_Name, 
	UPs.EmailAddress, UPs.DOB, UPs.Town, UPs.Address,
	UPs.Stored_Card, UPs.CardType, M.Membership_Tier,M.Credit_Balance
From All_User_Profiles As UPs
Join Members As M
On UPs.UserID = M.UserID;

Select * From All_Member_Profiles;


-- Seeing Which Users Are Not Subscribed To Fable:
Create View NonMembers AS
Select * From All_User_Profiles
Except 
Select
	MP.UserID, MP.Username, MP.First_Name, MP.Last_Name,
	MP.EmailAddress, MP.DOB, MP.Town, MP.Address,
	MP.Stored_Card, MP.CardType
From All_Member_Profiles As MP;

Select * From NonMembers;


-- Seeing Product Details From the Inventory:
Create View ProductDetails As
Select B.ID As BookID, I.ID As Product_ID, B.Title, I.Price, B.Author_s From Books As B
Join Inventory as I
On I.BookID = B.ID;

Select * From ProductDetails;


-- Viewing Most Sold Books On Fable:
Create View MostOrderedItems As
Select Top 100 ProductID, Sum(Quantity) As Total_Pieces_Orders From Order_Items
Group By ProductID
Order By Sum(Quantity) Desc;

Select * From MostOrderedItems;


-- Seeing Which Books Are The Most Refunded:
Create View MostRefundedItems As
Select TOP 100 ProductID, Sum(Order_Items.Quantity) As NumberReturned From Orders
Join Order_Items
On Orders.ID = Order_Items.OrderID
Where OrderStatus = 'Refunded'
Group By (ProductID)
Order By (Sum(Order_Items.Quantity)) Desc;

Select * From MostRefundedItems;


-- Seeing The Details Of The Most Sold Books On Fable:
Create View MostOrderedItems_Details As
Select Top 100
	MOI.ProductID, MOI.Total_Pieces_Orders, ProductDetails.BookID,
	ProductDetails.Title, ProductDetails.Price, ProductDetails.Author_s
From MostOrderedItems As MOI
Left Join ProductDetails
On ProductDetails.Product_ID = MOI.ProductId
Order By MOI.Total_Pieces_Orders Desc;

Select * From MostOrderedItems_Details;


-- Obtaining Monthly Sales In 2024;
Create View Sales2024 As
Select TOP 12 Datename(Month, OrderDate) As Month, Count(*) As BooksSold, Sum(TotalAmount) As TotalSales 
From Orders 
Where OrderDate Between '2024' And '2025'
Group By Datename(Month, OrderDate)
Order By Min(OrderDate) Asc;

Select * From Sales2024;


-- Finding Users That Frequently Leave Reviews:
Create View Frequent_Reviewers As
Select TOP 500 ReviewerID, Count(ReviewerID) As No_Of_Reviews From Reviews
Group By ReviewerID
Having Count(ReviewerID) >= 10
Order By Count(ReviewerID) Desc;

Select * From Frequent_Reviewers;


-- Observing Book Reviews, Ratings and Genre Correlation:
Create View ReviewRatingGenreInfo As
Select 
	R.ID As ReviewID, R.ReviewerID, R.BookID, B.Title, 
	B.Author_s, value as Genre, R.Review, R.Rating As UserRating, R.Date 
From Reviews As R
Join Books As B
Cross Apply String_Split(B.Genres, ',')
On B.ID = R.BookID;

Select * From ReviewRatingGenreInfo;


-- Viewing A Users Preferences In Genre Based On Their Review History;
Create View UserPreference As 
Select A.Genre, Count(A.Genre) No_Of_Books_InGenre, Round(Avg(A.UserRating),3)  As AverageRating From ReviewRatingGenreInfo As A
Where A.ReviewerID = --We can insert the user id here.
Group By Genre
Order By Count(A.Genre) Desc;

Select * From UserPreference;


-- Viewing The Most Wishlisted Items:
Create View MostWishlistedItems As
Select TOP 500 ProductID, Count(ProductID) As NumberWishlisted From Wishlist As WL
Join Wishlist_Items As WLI
On WL.ID = WLI.WishlistID
Group By ProductID
Order By Count(ProductID) Desc;

Select * From MostWishlistedItems;


-- Observing User Activity Based On The Quantity Of Items In Their Wishlist And Cart:
Create View User_CartAndWishlist As
Select Wishlist.UserID As UserID, Wishlist.ID as WLID, Shopping_Carts.ID as CartID From Wishlist
Join Shopping_Carts
On Wishlist.UserID = Shopping_Carts.UserID;

Select 
	UCW.UserID, Count(Distinct WLI.ProductID) As WL_Products,
	Count(Distinct SCI.ProductID) As Cart_Products,
	Count(Distinct WLI.ProductID) + Count(Distinct SCI.ProductID) As TotalNum
From User_CartAndWishlist As UCW
Join Wishlist_Items As WLI On UCW.WLID = WLI.WishlistID
Join Shopping_Cart_Items As SCI On UCW.CartID = SCI.CartID
Group By UserID, WLID, UCW.CartID
Order By Count(Distinct WLI.ProductID) + Count(Distinct SCI.ProductID) Desc;


