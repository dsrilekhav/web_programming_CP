-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 11:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments_with_ratings`
--

CREATE TABLE `comments_with_ratings` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `review_or_comments` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments_with_ratings`
--

INSERT INTO `comments_with_ratings` (`id`, `movie_id`, `review_or_comments`, `rating`, `username`) VALUES
(1, 2, 'I came out of this film thinking hard about the past and the future. Definitely worth a watch.', 9, 'Great4'),
(2, 7, 'thoroughly enjoyed it', 8.9, 'Sri1234'),
(3, 2, 'Not bad, but can be improved in many areas', 5.6, 'Sri1234'),
(4, 1, 'I liked Brad\'s character the most, but Leo easily matched with his own performance. A definite see-it-in-theatres watch. Bring your sense of humor though. There are lines of dialogue and laugh out loud bits that completely satisfy your curious mind. Expec', 9.6, 'Great4'),
(5, 1, 'Loved ML character, Leonardo is a pro', 8.7, 'Great4');

-- --------------------------------------------------------

--
-- Table structure for table `movies_description`
--

CREATE TABLE `movies_description` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(255) NOT NULL,
  `year_released` int(11) NOT NULL,
  `cast` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `img_path` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_description`
--

INSERT INTO `movies_description` (`id`, `movie_name`, `year_released`, `cast`, `director`, `Genre`, `description`, `rating`, `img_path`) VALUES
(1, 'Once Upon a Time ... in Hollywood', 2019, 'Leonardo DiCaprio, Brad Pitt,Margot Robbie', 'Quentin Tarantino', 'Comedy | Drama', 'Quentin Tarantino\'s Once Upon a Time... in Hollywood visits 1969 Los Angeles, where everything is changing, as TV star Rick Dalton (Leonardo DiCaprio) and his longtime stunt double Cliff Booth (Brad Pitt) make their way around an industry they hardly reco', 9.5, 'https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(2, 'Mike Wallace Is Here', 2019, 'Mike Wallace', ' Avi Belkin', 'Documentary', 'For over fifty years, 60 Minutes\' fearsome newsman Mike Wallace went head-to-head with the 20th century\'s most influential figures. Relying exclusively on archival footage, Mike Wallace Is Here interrogates the interrogator, tracking Mike\'s storied career', 6.8, 'https://m.media-amazon.com/images/M/MV5BNGEzMDYwZTItMzI1MS00ODc2LTlmYWQtZTk2NmFjYzlhODZjXkEyXkFqcGdeQXVyODAzODU1NDQ@._V1_SX675_CR0,0,675,999_AL_.jpg'),
(5, 'Inception', 2010, 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page, Tom Hardy', 'Christopher Nolan', 'Action, Adventure, Sci-Fi, Thriller', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 8.8, 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg'),
(6, 'The Avengers', 2012, 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth', 'Joss Whedon', 'Action, Adventure, Sci-Fi', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 8.1, 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),
(7, 'Black Panther', 2018, 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o, Danai Gurira', 'Ryan Coogler', 'Action, Adventure, Sci-Fi', 'T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.', 7.3, 'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_SX300.jpg'),
(8, 'Titanic', 1997, 'Leonardo DiCaprio, Kate Winslet, Billy Zane, Kathy Bates', 'James Cameron', 'Drama, Romance', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 7.8, 'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg'),
(9, 'Spider-Man: Homecoming', 2017, 'Tom Holland, Michael Keaton, Robert Downey Jr., Marisa Tomei', 'Jon Watts', 'Action, Adventure, Sci-Fi', 'Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City.', 7.5, 'https://m.media-amazon.com/images/M/MV5BNTk4ODQ1MzgzNl5BMl5BanBnXkFtZTgwMTMyMzM4MTI@._V1_SX300.jpg'),
(10, 'Batman', 1989, 'Michael Keaton, Jack Nicholson, Kim Basinger, Robert Wuhl', 'Tim Burton', 'Action, Adventure', 'The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.', 7.6, 'https://m.media-amazon.com/images/M/MV5BMTYwNjAyODIyMF5BMl5BanBnXkFtZTYwNDMwMDk2._V1_SX300.jpg'),
(11, 'The Dark Knight', 2008, 'Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine', 'Christopher Nolan', 'Action, Crime, Drama, Thriller', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 9, 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg'),
(12, 'Venom', 2018, 'Tom Hardy, Michelle Williams, Riz Ahmed, Scott Haze', 'Ruben Fleischer', 'Action, Sci-Fi, Thriller', 'A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded Earth. But the being takes a liking to Earth and decides to protect it.', 6.7, 'https://m.media-amazon.com/images/M/MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_SX300.jpg'),
(13, 'The Matrix', 1999, 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss, Hugo Weaving', 'Lana Wachowski, Lilly Wachowski', 'Action, Sci-Fi', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 8.7, 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),
(14, 'The Godfather', 1972, 'Marlon Brando, Al Pacino, James Caan, Richard S. Castellano', 'Francis Ford Coppola', 'Crime, Drama', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 9.2, 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg'),
(15, '12 Angry Men', 1957, 'Martin Balsam, John Fiedler, Lee J. Cobb, E.G. Marshall', 'Sidney Lumet', 'Drama', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 8.9, 'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg'),
(16, 'End Game', 2006, 'Cuba Gooding Jr., Angie Harmon, James Woods, Patrick Fabian', 'Andy Cheng', 'Action, Crime, Drama, Mystery, Thriller', 'A secret Service agent and a news reporter investigate the conspiracy behind the assassination of the President.', 5.1, 'https://m.media-amazon.com/images/M/MV5BMTI5OTQ1NTczMl5BMl5BanBnXkFtZTcwNzg0MjczMQ@@._V1_SX300.jpg'),
(17, 'Thor', 2011, 'Chris Hemsworth, Natalie Portman, Tom Hiddleston, Anthony Hopkins', 'Kenneth Branagh', 'Action, Adventure, Fantasy', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', 7, 'https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_SX300.jpg'),
(18, 'La La Land', 2016, 'Ryan Gosling, Emma Stone, Amiée Conn, Terry Walters', 'Damien Chazelle', 'Comedy, Drama, Music, Musical, Romance', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 8, 'https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_SX300.jpg'),
(19, 'Interstellar', 2014, 'Ellen Burstyn, Matthew McConaughey, Mackenzie Foy, John Lithgow', 'Christopher Nolan', 'Adventure, Drama, Sci-Fi', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 8.6, 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg'),
(20, 'The Lion King', 1994, 'Rowan Atkinson, Matthew Broderick, Niketa Calame-Harris, Jim Cummings', 'Roger Allers, Rob Minkoff', 'Animation, Adventure, Drama, Family, Musical', 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father\'s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.', 8.5, 'https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_SX300.jpg'),
(21, 'Avatar', 2009, 'Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang', 'James Cameron', 'Action, Adventure, Fantasy, Sci-Fi', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 7.8, 'https://m.media-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg'),
(22, 'Gladiator', 2000, 'Russell Crowe, Joaquin Phoenix, Connie Nielsen, Oliver Reed', 'Ridley Scott', 'Action, Adventure, Drama', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 8.5, 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),
(23, 'Dangal', 2016, 'Aamir Khan, Fatima Sana Shaikh, Sanya Malhotra, Sakshi Tanwar', 'Nitesh Tiwari', 'Action, Biography, Drama, Sport', 'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.', 8.4, 'https://m.media-amazon.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_SX300.jpg'),
(24, 'Up', 2009, 'Edward Asner, Christopher Plummer, Jordan Nagai, Bob Peterson', 'Pete Docter, Bob Peterson(co-director)', 'Animation, Adventure, Comedy, Family', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', 8.2, 'https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX300.jpg'),
(25, 'Green Book', 2018, 'Viggo Mortensen, Mahershala Ali, Linda Cardellini, Sebastian Maniscalco', 'Peter Farrelly', 'Biography, Comedy, Drama, Music', 'A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.', 8.2, 'https://m.media-amazon.com/images/M/MV5BYzIzYmJlYTYtNGNiYy00N2EwLTk4ZjItMGYyZTJiOTVkM2RlXkEyXkFqcGdeQXVyODY1NDk1NjE@._V1_SX300.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `country` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL DEFAULT 'user',
  `logged_in` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`username`, `first_name`, `last_name`, `email`, `password`, `city`, `state`, `Age`, `Gender`, `country`, `level`, `logged_in`) VALUES
('Great4', 'John', 'Doe', 'johnDoe@gmail.com', '341252', 'Pheonix', 'Arizona', 35, 'M', 'USA', 'user', 0),
('Sri1234', 'Srilekha', 'Divyakolu', 'sdivyakolu@student.gsu.edu', '123456', 'Atlanta', 'Georgia', 24, 'F', 'USA', 'admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments_with_ratings`
--
ALTER TABLE `comments_with_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_description`
--
ALTER TABLE `movies_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments_with_ratings`
--
ALTER TABLE `comments_with_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies_description`
--
ALTER TABLE `movies_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
