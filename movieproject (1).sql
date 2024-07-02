-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 12:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `ActorID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL
) ;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`ActorID`, `FirstName`, `LastName`, `DateOfBirth`, `Nationality`) VALUES
(1, 'Richard', 'Alule', '1989-05-24', 'Kenya'),
(2, 'Njeri', 'Mwangi', '1982-11-05', 'Kenya'),
(3, 'Robert', 'Lwanga', '1986-08-13', 'Kenya'),
(4, 'Lesly', 'Bonyo', '1988-03-07', 'Kenya'),
(5, 'Olga', 'Nesi', '1992-06-28', 'Kenya'),
(6, 'Veronica', 'Nalana', '1994-07-10', 'Kenya'),
(7, 'Kate', 'Kedi', '2008-12-24', 'Kenya'),
(8, 'Jaqueline', 'Fox', '1989-02-19', 'United States'),
(9, 'Briana', 'Lephulne', '2005-05-13', 'South Africa'),
(10, 'Prianka', 'Chopra', '2008-08-04', 'Kenya'),
(11, 'Jason', 'Momoa', '2003-08-24', 'United States'),
(12, 'Steven', 'Kanumba', '1988-12-24', 'Tanzania'),
(13, 'Tangango', 'Jolof', '1989-03-27', 'Ghana'),
(14, 'Emeka', 'Eze', '1985-02-01', 'Nigeria'),
(15, 'Philip', 'Grace', '2000-06-07', 'United States'),
(16, 'Harry', 'Pinero', '2000-12-13', 'United Kingdom'),
(17, 'Dave', 'Kingsley', '1995-05-02', 'United Kingdom'),
(18, 'Ramaphosa', 'Jordan', '1989-05-03', 'Botswana'),
(19, 'Mtakachote', 'Aliko', '1985-10-06', 'Botswana'),
(20, 'Kingori', 'Jeff', '2000-12-15', 'Kenya'),
(21, 'Kalekye', 'Mumo', '2004-09-24', 'Kenya'),
(22, 'Alvaro', 'Dominic', '1984-04-27', 'Brasil'),
(23, 'Djovic', 'Henrike', '2005-08-12', 'Solvakia'),
(24, 'Jessica', 'Pearson', '1990-06-30', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `DirectorID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `PassportPhoto` blob DEFAULT NULL
) ;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`DirectorID`, `FirstName`, `LastName`, `DateOfBirth`, `Nationality`, `PassportPhoto`) VALUES
(1, 'John', 'Smith', '1983-06-02', 'American', NULL),
(2, 'Jane', 'Doe', '2002-10-14', 'British', NULL),
(3, 'Robert', 'Johnson', '1982-01-23', 'Canadian', NULL),
(4, 'Michael', 'Williams', '2008-06-09', 'Australian', NULL),
(5, 'Mary', 'Jones', '1984-11-23', 'Irish', NULL),
(6, 'William', 'Brown', '1993-12-14', 'Scottish', NULL),
(7, 'Patricia', 'Davis', '1992-08-02', 'Welsh', NULL),
(8, 'Jennifer', 'Miller', '1990-07-20', 'New Zealander', NULL),
(9, 'Linda', 'Wilson', '2003-12-09', 'South African', NULL),
(10, 'Elizabeth', 'Moore', '1997-03-10', 'Indian', NULL),
(11, 'David', 'Taylor', '2008-11-12', 'Chinese', NULL),
(12, 'Richard', 'Anderson', '1994-02-11', 'Japanese', NULL),
(13, 'Joseph', 'Thomas', '1990-09-10', 'German', NULL),
(14, 'Charles', 'Jackson', '1998-03-04', 'French', NULL),
(15, 'Christopher', 'White', '2008-07-22', 'Italian', NULL),
(16, 'Daniel', 'Harris', '1985-08-16', 'Spanish', NULL),
(17, 'Matthew', 'Martin', '2004-07-10', 'Russian', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `GenreID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`GenreID`, `Name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Drama'),
(5, 'Fantasy'),
(6, 'Horror'),
(7, 'Mystery'),
(8, 'Romance'),
(9, 'Science Fiction'),
(10, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `movieactors`
--

CREATE TABLE `movieactors` (
  `MovieID` int(11) NOT NULL,
  `ActorID` int(11) NOT NULL,
  `Role` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviedirectors`
--

CREATE TABLE `moviedirectors` (
  `MovieID` int(11) NOT NULL,
  `DirectorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviegenres`
--

CREATE TABLE `moviegenres` (
  `MovieID` int(11) NOT NULL,
  `GenreID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movieproductioncompanies`
--

CREATE TABLE `movieproductioncompanies` (
  `MovieID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `MovieID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Resolution` varchar(10) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Synopsis` text DEFAULT NULL,
  `GenreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MovieID`, `Title`, `ReleaseDate`, `Duration`, `Resolution`, `Language`, `Synopsis`, `GenreID`) VALUES
(1, 'Inception', '2010-07-16', 148, '1080', 'English', 'A thief who steals corporate secrets through the use of dream-sharing technology.', 8),
(2, 'The Matrix', '1999-03-31', 136, '1080', 'English', 'A computer hacker learns about the true nature of his reality and his role in the war against its controllers.', 8),
(3, 'Parasite', '2019-05-30', 132, '1080', 'Korean', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 4),
(4, 'The Godfather', '1972-03-24', 175, '720', 'English', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 4),
(5, 'Pulp Fiction', '1994-10-14', 154, '1080', 'English', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 4),
(6, 'The Dark Knight', '2008-07-18', 152, '1080', 'English', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.', 1),
(7, 'Schindler\'s List', '1993-11-30', 195, '720', 'English', 'In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce.', 4),
(8, 'The Lord of the Rings: The Return of the King', '2003-12-17', 201, '1080', 'English', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 2),
(9, 'Fight Club', '1999-10-15', 139, '1080', 'English', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', 4),
(10, 'Forrest Gump', '1994-07-06', 142, '720', 'English', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an IQ of 75.', 4),
(11, 'Amélie', '2001-04-25', 122, '1080', 'French', 'Amélie is an innocent and naive girl in Paris with her own sense of justice.', 3),
(12, 'Spirited Away', '2001-07-20', 125, '1080', 'Japanese', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 5),
(13, 'La vita è bella', '1997-12-20', 116, '720', 'Italian', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 4),
(14, 'Pan\'s Labyrinth', '2006-10-11', 118, '1080', 'Spanish', 'In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.', 5),
(15, 'City of God', '2002-08-30', 130, '1080', 'Portuguese', 'In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.', 1),
(16, 'Oldboy', '2003-11-21', 120, '720', 'Korean', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', 9),
(17, 'Crouching Tiger, Hidden Dragon', '2000-07-06', 120, '1080', 'Mandarin', 'A young Chinese warrior steals a sword from a famed swordsman and then escapes into a world of romantic adventure with a mysterious man in the frontier of the nation.', 2),
(18, 'Intouchables', '2011-11-02', 112, '1080', 'French', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 3),
(19, 'The Lives of Others', '2006-03-23', 137, '1080', 'German', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', 9),
(20, 'Life is Beautiful', '1997-12-20', 116, '720', 'Italian', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 4),
(21, 'Tsotsi', '2005-08-18', 94, '1080', 'Zulu', 'Six days in the violent life of a young Johannesburg gang leader.', 4),
(22, 'Cairo Station', '1958-07-20', 77, '720', 'Arabic', 'A newspaper vendor with a crippled leg falls in love with an engaged girl.', 9),
(23, 'Timbuktu', '2014-05-14', 96, '1080', 'French', 'A cattle herder and his family who reside in the dunes of Timbuktu find their quiet lives abruptly disturbed by a jihadist takeover of the nearby city.', 4),
(24, 'The Gods Must Be Crazy', '1980-09-10', 109, '720', 'Afrikaans', 'A comic allegory about a traveling Bushman who encounters modern civilization and its stranger aspects.', 3),
(25, 'Yeelen', '1987-09-09', 105, '1080', 'Bambara', 'A young man with magical powers journeys to his uncle to request help in fighting his sorcerer father.', 5),
(26, 'The Boy Who Harnessed the Wind', '2019-01-25', 113, '1080', 'Chichewa', 'Against all the odds, a thirteen-year-old boy in Malawi invents an unconventional way to save his family and village from famine.', 4),
(27, 'Black Girl', '1966-01-01', 65, '720', 'French', 'A Senegalese woman is hired to be a servant in France, but she is mistreated by her employers.', 4),
(28, 'Half of a Yellow Sun', '2013-09-08', 111, '1080', 'English', 'Sisters Olanna and Kainene return home to 1960s Nigeria, where they soon diverge on different paths.', 4),
(29, 'Sembene!', '2015-01-18', 86, '720', 'French', 'The story of Ousmane Sembene, the father of African cinema, told through his groundbreaking films.', 9),
(30, 'Supa Modo', '2018-02-18', 74, '1080', 'Swahili', 'A young girl whose dreams of becoming a superhero are threatened by terminal illness inspires those around her to make her dreams come true.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `productioncompanies`
--

CREATE TABLE `productioncompanies` (
  `CompanyID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` int(11) NOT NULL,
  `MovieID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL CHECK (`Rating` >= 1 and `Rating` <= 5),
  `Comment` text DEFAULT NULL,
  `ReviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL CHECK (`Email` regexp '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$'),
  `PasswordHash` varchar(255) NOT NULL,
  `IsAdmin` tinyint(1) DEFAULT 0,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Email`, `PasswordHash`, `IsAdmin`, `CreatedAt`) VALUES
(1, 'johndoe', 'johndoe@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2024-06-13 12:10:29'),
(2, 'janesmith', 'janesmith@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-06-13 12:10:29'),
(3, 'alicejohnson', 'alicejohnson@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2024-06-13 12:10:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ActorID`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`DirectorID`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`GenreID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `movieactors`
--
ALTER TABLE `movieactors`
  ADD PRIMARY KEY (`MovieID`,`ActorID`),
  ADD KEY `ActorID` (`ActorID`);

--
-- Indexes for table `moviedirectors`
--
ALTER TABLE `moviedirectors`
  ADD PRIMARY KEY (`MovieID`,`DirectorID`),
  ADD KEY `DirectorID` (`DirectorID`);

--
-- Indexes for table `moviegenres`
--
ALTER TABLE `moviegenres`
  ADD PRIMARY KEY (`MovieID`,`GenreID`),
  ADD KEY `GenreID` (`GenreID`);

--
-- Indexes for table `movieproductioncompanies`
--
ALTER TABLE `movieproductioncompanies`
  ADD PRIMARY KEY (`MovieID`,`CompanyID`),
  ADD KEY `CompanyID` (`CompanyID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`MovieID`),
  ADD KEY `GenreID` (`GenreID`);

--
-- Indexes for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  ADD PRIMARY KEY (`CompanyID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `MovieID` (`MovieID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `ActorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `DirectorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `MovieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  MODIFY `CompanyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movieactors`
--
ALTER TABLE `movieactors`
  ADD CONSTRAINT `movieactors_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`),
  ADD CONSTRAINT `movieactors_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `actors` (`ActorID`);

--
-- Constraints for table `moviedirectors`
--
ALTER TABLE `moviedirectors`
  ADD CONSTRAINT `moviedirectors_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`),
  ADD CONSTRAINT `moviedirectors_ibfk_2` FOREIGN KEY (`DirectorID`) REFERENCES `directors` (`DirectorID`);

--
-- Constraints for table `moviegenres`
--
ALTER TABLE `moviegenres`
  ADD CONSTRAINT `moviegenres_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`),
  ADD CONSTRAINT `moviegenres_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `genres` (`GenreID`);

--
-- Constraints for table `movieproductioncompanies`
--
ALTER TABLE `movieproductioncompanies`
  ADD CONSTRAINT `movieproductioncompanies_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`),
  ADD CONSTRAINT `movieproductioncompanies_ibfk_2` FOREIGN KEY (`CompanyID`) REFERENCES `productioncompanies` (`CompanyID`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`GenreID`) REFERENCES `genres` (`GenreID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
