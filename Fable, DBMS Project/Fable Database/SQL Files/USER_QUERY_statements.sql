Use FableDB;


-- Filtering books by genre:
Select * From Genres;

Create View FourteenthCenturyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = '14th Century';

Create View SeventeenthCenturyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = '17th Century';

Create View NineteenthCenturyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = '19th Century';

Create View TwentiethCenturyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = '20th Century';

Create View SecondGradeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = '2nd Grade';

Create View AcademiaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Academia';

Create View AcademicsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Academics';

Create View ActionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Action';

Create View AdoptionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Adoption';

Create View AdultFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Adult';

Create View AdultFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Adult Fiction';

Create View AdventureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Adventure';

Create View AfricaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Africa';

Create View AfricanAmericanFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'African American';

Create View AfricanLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'African Literature';

Create View AlternateHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Alternate History';

Create View AlternativeMedicineFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Alternative Medicine';

Create View AmazonFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Amazon';

Create View AmericanFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'American';

Create View AmericanHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'American History';

Create View AmericanRevolutionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'American Revolution';

Create View AmericanaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Americana';

Create View AncientFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Ancient';

Create View AncientHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Ancient History';

Create View AnimalsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Animals';

Create View AnthologiesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Anthologies';

Create View AnthropologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Anthropology';

Create View ApocalypticFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Apocalyptic';

Create View ArchaeologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Archaeology';

Create View ArchitectureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Architecture';

Create View ArtFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Art';

Create View ArtDesignFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Art Design';

Create View ArtHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Art History';

Create View AsiaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Asia';

Create View AsianLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Asian Literature';

Create View AstronomyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Astronomy';

Create View AudiobookFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Audiobook';

Create View AustraliaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Australia';

Create View AutisticSpectrumDisorderFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Autistic Spectrum Disorder';

Create View AutobiographyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Autobiography';

Create View AviationFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Aviation';

Create View AviationHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Aviation History';

Create View BDSMFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'BDSM';

Create View BandeDessinéeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Bande Dessinée';

Create View BannedBooksFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Banned Books';

Create View BaseballFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Baseball';

Create View BasketballFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Basketball';

Create View BeachReadsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Beach Reads';

Create View BeadingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Beading';

Create View BiblicalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Biblical';

Create View BicyclesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Bicycles';

Create View BiographyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Biography';

Create View BiographyMemoirFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Biography Memoir';

Create View BiologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Biology';

Create View BookClubFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Book Club';

Create View BooksAboutBooksFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Books About Books';

Create View BritishLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'British Literature';

Create View BuddhismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Buddhism';

Create View BuisnessFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Buisness';

Create View BusinessFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Business';

Create View CanadaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Canada';

Create View CatholicFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Catholic';

Create View CatsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cats';

Create View CelebrityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Celebrity';

Create View ChapterBooksFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Chapter Books';

Create View ChemistryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Chemistry';

Create View ChessFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Chess';

Create View ChickLitFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Chick Lit';

Create View ChildrensFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Childrens';

Create View ChinaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'China';

Create View ChivalryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Chivalry';

Create View ChristianFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Christian';

Create View ChristianFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Christian Fiction';

Create View ChristianLivingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Christian Living';

Create View ChristianityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Christianity';

Create View ChristmasFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Christmas';

Create View ChurchFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Church';

Create View ChurchHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Church History';

Create View CivilWarFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Civil War';

Create View ClassicLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Classic Literature';

Create View ClassicalStudiesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Classical Studies';

Create View ClassicsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Classics';

Create View CleanRomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Clean Romance';

Create View ClimbingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Climbing';

Create View CodingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Coding';

Create View CollectionsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Collections';

Create View CollegeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'College';

Create View ComedyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Comedy';

Create View ComicBookFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Comic Book';

Create View ComicsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Comics';

Create View ComingOfAgeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Coming Of Age';

Create View ComixFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Comix';

Create View ComputerScienceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Computer Science';

Create View ComputersFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Computers';

Create View ConspiracyTheoriesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Conspiracy Theories';

Create View ContemporaryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Contemporary';

Create View ContemporaryRomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Contemporary Romance';

Create View CookbooksFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cookbooks';

Create View CookingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cooking';

Create View CozyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cozy';

Create View CozyMysteryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cozy Mystery';

Create View CraftsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Crafts';

Create View CrimeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Crime';

Create View CriticismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Criticism';

Create View CultsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cults';

Create View CulturalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cultural';

Create View CulturalStudiesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cultural Studies';

Create View CyberpunkFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Cyberpunk';

Create View DarkFantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Dark Fantasy';

Create View DeathFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Death';

Create View DesignFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Design';

Create View DetectiveFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Detective';

Create View DietsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Diets';

Create View DogsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Dogs';

Create View DragonsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Dragons';

Create View DramaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Drama';

Create View DystopiaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Dystopia';

Create View EcclesiologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Ecclesiology';

Create View EcologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Ecology';

Create View EconomicsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Economics';

Create View EducationFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Education';

Create View EgyptFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Egypt';

Create View EnemiesToLoversFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Enemies To Lovers';

Create View EngineeringFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Engineering';

Create View EnglishLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'English Literature';

Create View EntrepreneurshipFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Entrepreneurship';

Create View EnvironmentFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Environment';

Create View EpicFantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Epic Fantasy';

Create View EroticaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Erotica';

Create View EspionageFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Espionage';

Create View EssaysFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Essays';

Create View EuropeanHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'European History';

Create View EvolutionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Evolution';

Create View FaeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Fae';

Create View FairiesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Fairies';

Create View FairyTalesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Fairy Tales';

Create View FaithFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Faith';

Create View FamilyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Family';

Create View FantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Fantasy';

Create View FashionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Fashion';

Create View FeminismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Feminism';

Create View FictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Fiction';

Create View FilmFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Film';

Create View FinanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Finance';

Create View FitnessFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Fitness';

Create View FolkloreFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Folklore';

Create View FoodFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Food';

Create View FoodandDrinkFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Food and Drink';

Create View FoodieFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Foodie';

Create View FootballFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Football';

Create View FranceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'France';

Create View FrenchLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'French Literature';

Create View FriendshipFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Friendship';

Create View FuturisticFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Futuristic';

Create View GameDesignFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Game Design';

Create View GamesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Games';

Create View GamingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Gaming';

Create View GayFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Gay';

Create View GenderFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Gender';

Create View GenderStudiesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Gender Studies';

Create View GenderandSexualityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Gender and Sexuality';

Create View GeologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Geology';

Create View GeorgianFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Georgian';

Create View GermanLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'German Literature';

Create View GhostStoriesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Ghost Stories';

Create View GothicFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Gothic';

Create View GovernmentFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Government';

Create View GradSchoolFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Grad School';

Create View GraphicNovelsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Graphic Novels';

Create View GraphicNovelsComicsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Graphic Novels Comics';

Create View GreeceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Greece';

Create View GreekMythologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Greek Mythology';

Create View GriefFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Grief';

Create View GuidebookFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Guidebook';

Create View GuidesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Guides';

Create View HardBoiledFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Hard Boiled';

Create View HarlequinFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Harlequin';

Create View HarlequinBlazeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Harlequin Blaze';

Create View HarlequinDesireFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Harlequin Desire';

Create View HarlequinPresentsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Harlequin Presents';

Create View HealthFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Health';

Create View HighFantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'High Fantasy';

Create View HighSchoolFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'High School';

Create View HipHopFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Hip Hop';

Create View HistoricalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Historical';

Create View HistoricalFantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Historical Fantasy';

Create View HistoricalFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Historical Fiction';

Create View HistoricalMysteryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Historical Mystery';

Create View HistoricalRomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Historical Romance';

Create View HistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'History';

Create View HistoryOfScienceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'History Of Science';

Create View HockeyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Hockey';

Create View HolidayFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Holiday';

Create View HolocaustFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Holocaust';

Create View HomeopathyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Homeopathy';

Create View HorrorFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Horror';

Create View HowToFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'How To';

Create View HumorFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Humor';

Create View IndiaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'India';

Create View IndianLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Indian Literature';

Create View IndigenousFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Indigenous';

Create View InspirationalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Inspirational';

Create View InternetFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Internet';

Create View IrelandFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Ireland';

Create View Irish LiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Irish Literature';

Create View IsraelFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Israel';

Create View ItalianLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Italian Literature';

Create View ItalyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Italy';

Create View JapanFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Japan';

Create View JapaneseLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Japanese Literature';

Create View JewelleryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Jewellery';

Create View JewelleryMakingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Jewellery Making';

Create View JewishFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Jewish';

Create View JournalismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Journalism';

Create View JudaismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Judaism';

Create View JuvenileFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Juvenile';

Create View KenyaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Kenya';

Create View LGBTFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'LGBT';

Create View LanguageFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Language';

Create View LatinAmericanFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Latin American';

Create View LatinAmericanHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Latin American History';

Create View LatinAmericanLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Latin American Literature';

Create View LawFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Law';

Create View LdsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Lds';

Create View LeadershipFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Leadership';

Create View LegalThrillerFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Legal Thriller';

Create View LinguisticsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Linguistics';

Create View LiteraryCriticismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Literary Criticism';

Create View LiteraryFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Literary Fiction';

Create View LiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Literature';

Create View LoveFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Love';

Create View MMRomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'M M Romance';

Create View MagicFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Magic';

Create View MagicalRealismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Magical Realism';

Create View MagickFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Magick';

Create View ManagementFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Management';

Create View MangaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Manga';

Create View MaritimeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Maritime';

Create View MarriageFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Marriage';

Create View Material CultureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Material Culture';

Create View MathematicsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Mathematics';

Create View MediaTieInFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Media Tie In';

Create View MedicalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Medical';

Create View MedicineFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Medicine';

Create View MedievalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Medieval';

Create View MedievalHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Medieval History';

Create View MeditationFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Meditation';

Create View MemoirFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Memoir';

Create View MentalHealthFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Mental Health';

Create View MermaidsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Mermaids';

Create View MiddleGradeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Middle Grade';

Create View MilitaryFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Military Fiction';

Create View MilitaryHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Military History';

Create View MoneyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Money';

Create View MotorcycleFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Motorcycle';

Create View MotorcyclingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Motorcycling';

Create View MountaineeringFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Mountaineering';

Create View MurderMysteryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Murder Mystery';

Create View MusicFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Music';

Create View MusicalsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Musicals';

Create View MysteryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Mystery';

Create View MysteryThrillerFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Mystery Thriller';

Create View MythologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Mythology';

Create View NativeAmericanFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Native American';

Create View NativeAmericansFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Native Americans';

Create View NaturalHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Natural History';

Create View NatureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Nature';

Create View NeuroscienceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Neuroscience';

Create View NewYorkFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'New York';

Create View NoirFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Noir';

Create View NonfictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Nonfiction';

Create View NovelsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Novels';

Create View NutritionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Nutrition';

Create View OccultFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Occult';

Create View OutdoorsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Outdoors';

Create View ParanormalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Paranormal';

Create View ParanormalRomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Paranormal Romance';

Create View ParentingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Parenting';

Create View PeakOilFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Peak Oil';

Create View PersonalDevelopmentFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Personal Development';

Create View PersonalFinanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Personal Finance';

Create View PhilosophyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Philosophy';

Create View PhotographyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Photography';

Create View PhysicsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Physics';

Create View PictureBooksFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Picture Books';

Create View PiratesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Pirates';

Create View PlaysFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Plays';

Create View PoetryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Poetry';

Create View PoliticalScienceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Political Science';

Create View PoliticsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Politics';

Create View PopCultureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Pop Culture';

Create View PopularScienceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Popular Science';

Create View PostApocalypticFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Post Apocalyptic';

Create View PrayerFilter AS
Select ID, Title,value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Prayer';

Create View PreKFilter AS
Select ID, Title,value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Pre K';

Create View PrehistoricFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Prehistoric';

Create View PresidentsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Presidents';

Create View ProductivityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Productivity';

Create View ProgrammingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Programming';

Create View PsychologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Psychology';

Create View PulpFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Pulp';

Create View PulpNoirFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Pulp Noir';

Create View QueerFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Queer';

Create View RaceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Race';

Create View ReadForSchoolFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Read For School';

Create View RealisticFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Realistic Fiction';

Create View RecreationFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Recreation';

Create View ReferenceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Reference';

Create View RegencyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Regency';

Create View RelationshipsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Relationships';

Create View ReligionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Religion';

Create View ResearchFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Research';

Create View RolePlayingGamesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Role Playing Games';

Create View RomanFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Roman';

Create View RomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Romance';

Create View RomanticSuspenseFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Romantic Suspense';

Create View RussiaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Russia';

Create View RussianHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Russian History';

Create View RussianLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Russian Literature';

Create View SatireFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Satire';

Create View SchoolFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'School';

Create View SciFiFantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Sci Fi Fantasy';

Create View ScienceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Science';

Create View ScienceFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Science Fiction';

Create View ScienceFictionFantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Science Fiction Fantasy';

Create View SelfHelpFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Self Help';

Create View SequentialArtFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Sequential Art';

Create View SexualityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Sexuality';

Create View ShapeshiftersFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Shapeshifters';

Create View ShonenFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Shonen';

Create View ShortStoriesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Short Stories';

Create View SocialJusticeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Social Justice';

Create View SocialScienceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Social Science';

Create View SocietyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Society';

Create View SociologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Sociology';

Create View SoftwareFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Software';

Create View SouthAfricaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'South Africa';

Create View SouthernFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Southern';


Create View SovietUnionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Soviet Union';

Create View SpaceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Space';

Create View SpaceOperaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Space Opera';

Create View SpanishLiteratureFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Spanish Literature';

Create View SpeculativeFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Speculative Fiction';

Create View SpiritualityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Spirituality';

Create View SportsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Sports';

Create View SportsRomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Sports Romance';

Create View SteampunkFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Steampunk';

Create View StorytimeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Storytime';

Create View StuartFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Stuart';

Create View SupernaturalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Supernatural';

Create View SurvivalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Survival';

Create View SuspenseFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Suspense';

Create View SustainabilityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Sustainability';

Create View TeachingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Teaching';

Create View TechnicalFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Technical';

Create View TechnologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Technology';

Create View TextbooksFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Textbooks';

Create View TheUnitedStatesOfAmericaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'The United States Of America';

Create View TheatreFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Theatre';

Create View ThelemaFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Thelema';

Create View TheologyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Theology';

Create View TheoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Theory';

Create View ThrillerFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Thriller';

Create View TimeTravelFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Time Travel';

Create View TragedyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Tragedy';

Create View TransgenderFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Transgender';

Create View TransportFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Transport';

Create View TravelFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Travel';

Create View TravelogueFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Travelogue';

Create View TrueCrimeFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'True Crime';

Create View TvFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Tv';

Create View UnfinishedFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Unfinished';

Create View UrbanFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Urban';

Create View UrbanDesignFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Urban Design';

Create View UrbanFantasyFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Urban Fantasy';

Create View UrbanPlanningFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Urban Planning';

Create View UrbanismFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Urbanism';

Create View UsabilityFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Usability';

Create View VeganFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Vegan';

Create View VictorianFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Victorian';

Create View WarFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'War';

Create View WebFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Web';

Create View WebsiteDesignFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Website Design';

Create View WesternRomanceFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Western Romance';

Create View WesternsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Westerns';

Create View WineFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Wine';

Create View WitchcraftFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Witchcraft';

Create View WomensFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Womens';

Create View WomensFictionFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Womens Fiction';

Create View WordsFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Words';

Create View WorldHistoryFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'World History';

Create View WritingFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Writing';

Create View YoungAdultFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Young Adult';

Create View ZenFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Zen';

Create View ZombiesFilter AS
Select ID, Title, value as Genre From Books As B
Cross Apply String_Split(B.Genres, ',')
Where Trim(value) = 'Zombies';

-- Query By Genre With The Following Line:
-- Select * From {Insert-Genre-Name-Here}Filter;


-- Finding The Most Popular Books:
Create View PopularBooks AS
Select Top 15 ID, Title, Author_s 
From Books
Order By (Rating_count) Desc;

Select * From PopularBooks;


-- Finding An Author Based On The First (Few) Letter(s) Of Their Name And Their Works:
Create View Book_and_Author AS
Select ID, Title, value as Author From Books As B
Cross Apply String_Split(B.Author_s, ',') as BookAuthors;

Select Author, Title As Works From Book_and_Author
Where Author Like 'A%'; -- We can change this to any other letter(s).


-- Sifting Through Books Based On Their Rating:
Create View HighlyRatedBooks AS
Select Top 200 ID, Title, Author_s, Round(Rating,2) As Rating From Books
Order By (Rating_count) Desc, (Rating) Desc;

Select * From HighlyRatedBooks;


-- Finding Books Based On Their Price:
Create View Zero_Ten As
Select BookID, Title, Price, Author_s From ProductDetails
Where Price Between 0 and 10;

Create View Ten_Fifteen As
Select BookID, Title, Price, Author_s From ProductDetails
Where Price Between 10 and 15;

Create View Fifteen_TwentyFIve As
Select BookID, Title, Price, Author_s From ProductDetails
Where Price Between 15 and 25;

Create View TwentyFIve_ThirtyFive As
Select BookID, Title, Price, Author_s From ProductDetails
Where Price Between 25 and 35;


-- Finding Books Based On Their Format:
Select * From Books;
Create View Paperbacks As
Select B.ID, B.Title, I.Price, B.Author_s, B.Format As BookFormat From Books As B
Join Inventory As I
On B.ID = I.BookID
Where B.Format = 'Paperback';

Select * From Paperbacks;


-- Seeing All The Reviews Of A Specific Book:
Select ReviewerID, Review, Rating From Reviews As R
Where R.BookID = 2;


-- Non-Member User Seeing Their Profile:
Create View User1_Profile As
Select * From All_User_Profiles 
Where UserID = 1;

Select * From User1_Profile;


-- Fable Member Seeing Their Profile:
Create View Member1_Profile As
Select * From All_Member_Profiles
Where UserID = 9;

Select * From Member1_Profile;


-- A User Viewing Their Orders, Whether Complete, Pending Or Refunded:
Create View User26_Orders As
Select ID As OrderNumber, OrderStatus, OrderDate, TotalAmount From Orders Where UserID = 26;

Select * From User26_Orders;
