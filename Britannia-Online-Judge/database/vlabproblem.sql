-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 05:29 PM
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
-- Database: `vlabproblem`
--

-- --------------------------------------------------------

--
-- Table structure for table `allsolve`
--

CREATE TABLE `allsolve` (
  `sname` varchar(100) DEFAULT NULL,
  `total` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allsolved`
--

CREATE TABLE `allsolved` (
  `sname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `total` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `submit_name` varchar(100) DEFAULT NULL,
  `source_code` longtext DEFAULT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`submit_name`, `source_code`, `id`) VALUES
('sumi', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n\r\n', 183),
('sumi', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n\r\n', 184);

-- --------------------------------------------------------

--
-- Table structure for table `element`
--

CREATE TABLE `element` (
  `id` int(11) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `pbname` varchar(400) DEFAULT NULL,
  `pbdes` longtext DEFAULT NULL,
  `pbauthor` varchar(100) DEFAULT NULL,
  `tc` longtext DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `uoutput` longtext DEFAULT NULL,
  `pbid` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `element`
--

INSERT INTO `element` (`id`, `cname`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`, `pbid`) VALUES
(6, 'Toph Contest 2', 'Alice And ChessBoard', 'Itâ€™s Sunday afternoon, and Alice is in her room trying to figure out the rules of the game called Chess. She thinks sheâ€™s almost got it, but sheâ€™d like your help.\r\n\r\nAlice has placed a bishop on an empty chessboard. Given the position of the bishop and the positon of another square on the chessboard, Alice would like to know if the bishop can travel to that square in one move or not.\r\n\r\nChess is a game played on an 8*8 rectangular board. The rows of the board are numbered from 1â€¦8 and similarly the columns are numbered from 1â€¦8. (For this problem, you may assume that the rows are numbered from 1 to 8 from top to bottom and the columns are numbered from 1 to 8 from left to right). The bishop occupies a single square on the board (as does every other piece) and it can move any number of squares diagonally, but it cannot travel outside the board. Below is a picture demonstrating the moves of a bishop. The dotted squares are the squares the bishop can travel to in one move.\r\n\r\nlink\r\n\r\nInput\r\n\r\nIn the first line of input, there is a number T (1 â‰¤ T â‰¤ 200) denoting the number of test cases. Each of the next T lines contains the description of the T testcases. Each testcase contains four integers in a single line. The first two integer denotes the row and the column of the position of the bishop respectively and the second two integers denotes the row and the column of the postion of the targeted square respectively. It is guaranteed that the two squares wonâ€™t be the same. And of course, each of these integers will be between 1 and 8.\r\n\r\nOutput\r\n\r\nFor each test case, print â€œYesâ€ (without the quote) in a single line if the bishop can travel to the targeted square in one move. Otherwise print â€œNoâ€ (without the quote) in a single line.\r\n\r\nSample\r\n\r\nInput	\r\n3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2\r\n\r\nOutput\r\n\r\nNo\r\nNo\r\nYes', 'shawon', '3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2', 'No\r\nNo\r\nYes\r\n', 'No\nNo\nYes\n', 13),
(13, 'C Programming Lab 1', 'Reverse String', 'Write a Program that take a string as input and print reverse of the string as Output.\r\n\r\n\r\nInput starts with test case t<=100.  Each test case has a string s.\r\n\r\n\r\nSample Input\r\n2\r\ncse\r\nand\r\n\r\nSample Output\r\nesc\r\ndna\r\n\r\n', 'Asha', '2\r\ncse\r\nand', 'esc\r\ndna\r\n', 'esc\ndna\n', 33),
(14, 'Object Oriented Programming Lab 1', 'Object Array', 'The Result of 5th semester need to be published as soon as possible but But there is a problem in Result making software. So RUET needs you to make a simple result making program.\r\n\r\nInput:\r\n\r\n5\r\nAshadullah 3.20\r\nAaashish 3.90\r\nAaabbas 3.80\r\nAaaanish 3.80\r\nShawon 3.16\r\n\r\nOutput:\r\n\r\n1.Aaashish\r\n2.Aaaanish\r\n2.Aaabbas\r\n3.Ashadullah\r\n4.Shawon', 'Asha', '5\r\nAshadullah 3.20\r\nAaashish 3.90\r\nAaabbas 3.80\r\nAaaanish 3.80\r\nShawon 3.16', '1.Aaashish\r\n2.Aaaanish\r\n2.Aaabbas\r\n3.Ashadullah\r\n4.Shawon\r\n', '', 36),
(1212, 'C Programming Lab 1', 'problem-2', 'problem2 des', 'none', 'example', 'example', 'example', 322);

-- --------------------------------------------------------

--
-- Table structure for table `rapl_oj_contest`
--

CREATE TABLE `rapl_oj_contest` (
  `id` int(11) NOT NULL,
  `cname` varchar(4000) DEFAULT NULL,
  `start_at` time DEFAULT NULL,
  `end_at` time DEFAULT NULL,
  `date_on` date DEFAULT NULL,
  `tag` varchar(100) NOT NULL DEFAULT 'analytical'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rapl_oj_contest`
--

INSERT INTO `rapl_oj_contest` (`id`, `cname`, `start_at`, `end_at`, `date_on`, `tag`) VALUES
(6, 'Toph Contest 2', '22:00:00', '01:00:00', '2016-10-10', 'c'),
(13, 'C Programming Lab 1', '10:00:00', '23:00:00', '2017-03-27', 'c'),
(14, 'Object Oriented Programming Lab 1', '13:00:00', '18:00:00', '2017-03-27', 'oop');

-- --------------------------------------------------------

--
-- Table structure for table `solve`
--

CREATE TABLE `solve` (
  `sname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `solved` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `standings`
--

CREATE TABLE `standings` (
  `sname` varchar(100) DEFAULT NULL,
  `number` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `sid` int(100) NOT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `point` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`sid`, `sname`, `verdict`, `pbname`, `cid`, `status`, `point`) VALUES
(184, 'sumi', 'Wrong Answer', 'asdf', 3333, 0, -5.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`pbid`);

--
-- Indexes for table `rapl_oj_contest`
--
ALTER TABLE `rapl_oj_contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `element`
--
ALTER TABLE `element`
  MODIFY `pbid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
