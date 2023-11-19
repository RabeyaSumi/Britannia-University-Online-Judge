-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 04:36 PM
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
-- Database: `vlabreg`
--

-- --------------------------------------------------------

--
-- Table structure for table `archieve`
--

CREATE TABLE `archieve` (
  `id` int(11) NOT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `pbdes` longtext DEFAULT NULL,
  `pbauthor` varchar(100) DEFAULT NULL,
  `tc` mediumtext DEFAULT NULL,
  `output` mediumtext DEFAULT NULL,
  `uoutput` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `archieve`
--

INSERT INTO `archieve` (`id`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`) VALUES
(55, 'Google feeling lucky.', 'Google is one of the most famous Internet search engines which hosts and develops a number of Internetbased\r\nservices and products. On its search engine website, an interesting button â€˜Iâ€™m feeling luckyâ€™\r\nattracts our eyes. This feature could allow the user skip the search result page and goes directly to the\r\nfirst ranked page. Amazing! It saves a lot of time.\r\nThe question is, when one types some keywords and presses â€˜Iâ€™m feeling luckyâ€™ button, which web\r\npage will appear? Google does a lot and comes up with excellent approaches to deal with it. In this\r\nsimplified problem, let us just consider that Google assigns every web page an integer-valued relevance.\r\nThe most related page will be chosen. If there is a tie, all the pages with the highest relevance are\r\npossible to be chosen.\r\nYour task is simple, given 10 web pages and their relevance. Just pick out all the possible candidates\r\nwhich will be served to the user when â€˜Iâ€™m feeling luckyâ€™.\r\nInput\r\nThe input contains multiple test cases. The number of test cases T is in the first line of the input file.\r\nFor each test case, there are 10 lines, describing the web page and the relevance. Each line contains\r\na character string without any blank characters denoting the URL of this web page and an integer\r\nVi denoting the relevance of this web page. The length of the URL is between 1 and 100 inclusively.\r\n(1 â‰¤ Vi â‰¤ 100)\r\nOutput\r\nFor each test case, output several lines which are the URLs of the web pages which are possible to be\r\nchosen. The order of the URLs is the same as the input. Please look at the sample output for further\r\ninformation of output format.\r\n\r\n\r\nSample Input\r\n2\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 10\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nwww.university.edu.cn 9\r\nacm.university.edu.cn 10\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 11\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nacm.university.edu.cn 9\r\nacm.university.edu.cn 10\r\n\r\n\r\nSample Output\r\nCase #1:\r\nwww.alibaba.com\r\nwww.bad.com\r\nacm.university.edu.cn\r\nCase #2:\r\nwww.alibaba.com', 'collected', '2\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 10\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nwww.university.edu.cn 9\r\nacm.university.edu.cn 10\r\nwww.youtube.com 1\r\nwww.google.com 2\r\nwww.google.com.hk 3\r\nwww.alibaba.com 11\r\nwww.taobao.com 5\r\nwww.bad.com 10\r\nwww.good.com 7\r\nwww.fudan.edu.cn 8\r\nacm.university.edu.cn 9\r\nacm.university.edu.cn 10', 'Case #1:\r\nwww.alibaba.com\r\nwww.bad.com\r\nacm.university.edu.cn\r\nCase #2:\r\nwww.alibaba.com\r\n', 'Case 1: 7345056\nCase 2: 7345056\n'),
(58, 'IP Checking', 'An IP address is a 32 bit address formatted in the following way\r\n\r\na.b.c.d\r\n\r\nwhere a, b, c, d are integers each ranging from 0 to 255. Now you are given two IP addresses, first one in decimal form and second one in binary form, your task is to find if they are same or not.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 100), denoting the number of test cases.\r\n\r\nEach case starts with two lines. First line contains an IP address in decimal form, and second line contains an IP address in binary form. In binary form, each of the four parts contains 8 digits. Assume that the given addresses are valid.\r\n\r\nOutput\r\nFor each case, print the case number and \"Yes\" if they are same, otherwise print \"No\".\r\n\r\nSample Input\r\n\r\n2\r\n192.168.0.100\r\n11000000.10101000.00000000.11001000\r\n65.254.63.122\r\n01000001.11111110.00111111.01111010\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: No\r\nCase 2: Yes\r\n \r\n\r\nPROBLEM SETTER: JANE ALAM JAN', 'collected', '3\r\n80.239.242.53\r\n01010000.11101111.11110010.00110101\r\n118.98.235.40\r\n01000001.11111110.00111111.01111010\r\n141.0.11.253\r\n10001101.00000000.00001011.11111101', 'Case 1: Yes\r\nCase 2: No\r\nCase 3: Yes\r\n', 'Case 1: Yes\nCase 2: No\nCase 3: Yes\n'),
(60, 'Alice And ChessBoard', 'Itâ€™s Sunday afternoon, and Alice is in her room trying to figure out the rules of the game called Chess. She thinks sheâ€™s almost got it, but sheâ€™d like your help.\r\n\r\nAlice has placed a bishop on an empty chessboard. Given the position of the bishop and the positon of another square on the chessboard, Alice would like to know if the bishop can travel to that square in one move or not.\r\n\r\nChess is a game played on an 8*8 rectangular board. The rows of the board are numbered from 1â€¦8 and similarly the columns are numbered from 1â€¦8. (For this problem, you may assume that the rows are numbered from 1 to 8 from top to bottom and the columns are numbered from 1 to 8 from left to right). The bishop occupies a single square on the board (as does every other piece) and it can move any number of squares diagonally, but it cannot travel outside the board. Below is a picture demonstrating the moves of a bishop. The dotted squares are the squares the bishop can travel to in one move.\r\n\r\nlink\r\n\r\nInput\r\n\r\nIn the first line of input, there is a number T (1 â‰¤ T â‰¤ 200) denoting the number of test cases. Each of the next T lines contains the description of the T testcases. Each testcase contains four integers in a single line. The first two integer denotes the row and the column of the position of the bishop respectively and the second two integers denotes the row and the column of the postion of the targeted square respectively. It is guaranteed that the two squares wonâ€™t be the same. And of course, each of these integers will be between 1 and 8.\r\n\r\nOutput\r\n\r\nFor each test case, print â€œYesâ€ (without the quote) in a single line if the bishop can travel to the targeted square in one move. Otherwise print â€œNoâ€ (without the quote) in a single line.\r\n\r\nSample\r\n\r\nInput	\r\n3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2\r\n\r\nOutput\r\n\r\nNo\r\nNo\r\nYes', 'collected', '3\r\n5 6 5 1\r\n1 1 2 3\r\n3 4 5 2', 'No\r\nNo\r\nYes\r\n', 'No\nNo\nYes\n'),
(63, 'Greetings', 'After that the code will select a random problem for you from my problems database based on your previously solved problems, your skills and your weaknesses. But while I was coding for implementing this great idea, I found that, all of my problems are scattered in 2 computers. So, I have to merge them before running my code.\r\n\r\nNow you are given the number of problems in each of the computers, you have to find the total number of problems. You can safely assume that no problem is stored in multiple computers. So, all the problems are distinct.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 125), denoting the number of test cases.\r\n\r\nEach case starts with a line containing two integers a and b. a denotes the number of problems in the first computer and b denotes the number of problems in the second computer. You can safely assume that a and b will be non-negative and not greater than 10.\r\n\r\nOutput\r\nFor each case, print the case number and the total number of problems. See the samples for exact formatting.\r\n\r\nSample Input\r\n2\r\n1 7\r\n9 8\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: 8\r\nCase 2: 17', 'collected', '2\r\n1 7\r\n9 8\r\n', 'Case 1: 8\r\nCase 2: 17\r\n', 'Case 1: 8\nCase 2: 17\n'),
(67, 'Prime generator', ' Peter wants to generate some prime numbers for his cryptosystem. Help him! Your task is to generate all prime numbers between two given numbers!\r\nInput\r\n\r\nThe input begins with the number t of test cases in a single line (t<=10). In each of the next t lines there are two numbers m and n (1 <= m <= n <= 1000000000, n-m<=100000) separated by a space.\r\nOutput\r\n\r\nFor every test case print all prime numbers p such that m <= p <= n, one number per line, test cases separated by an empty line.\r\nExample\r\n\r\nInput:\r\n2\r\n1 10\r\n3 5\r\n\r\nOutput:\r\n2\r\n3\r\n5\r\n7\r\n\r\n3\r\n5\r\n\r\nWarning: large Input/Output data, be careful with certain languages (though most should be OK if the algorithm is well designed)', 'shawon', '1\r\n100000500 100000600', '100000541\r\n100000543\r\n100000561\r\n100000567\r\n100000577\r\n', '100000541\n100000543\n100000561\n100000567\n100000577\n');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `submit_name` varchar(50) DEFAULT NULL,
  `source_code` longtext DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`submit_name`, `source_code`, `id`) VALUES
('sumi', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int t, a, b;\r\n    long long sum;\r\n    cin>>t;\r\n    while(t--)\r\n    {\r\n        cin>>a>>b;\r\n        cout<<a+b<<\"\n\";\r\n    }\r\n\r\n\r\n}\r\n', 198),
('sumi', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int t, a, b;\r\n    long long sum;\r\n    cin>>t;\r\n    while(t--)\r\n    {\r\n        cin>>a>>b;\r\n        cout<<a+b+1<<\"\n\";\r\n    }\r\n\r\n\r\n}\r\n', 199),
('sumi', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 200),
('sumi', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 201),
('sumi', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 202);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `username` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbname` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`sid`, `sname`, `verdict`, `pbname`) VALUES
(198, 'sumi', 'Accepted', 'Just Find Sum'),
(199, 'sumi', 'Wrong Answer', 'Just Find Sum'),
(200, 'sumi', 'Wrong Answer', 'Google feeling lucky.'),
(201, 'sumi', 'Accepted', 'Greetings'),
(202, 'sumi', 'Accepted', 'Greetings');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `pass` varchar(40) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'student',
  `email` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `pass`, `status`, `email`) VALUES
('sumi', 'a52eb3f5da9d81b0d010bc83ad95c9dc', 'user', 'sumii.rab@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archieve`
--
ALTER TABLE `archieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archieve`
--
ALTER TABLE `archieve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
