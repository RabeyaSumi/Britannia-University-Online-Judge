-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 05:09 AM
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
('sumi', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n\r\n', 184),
('asdf', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}', 185),
('asdf', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}', 186),
('as', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=1;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}', 187),
('as', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}', 188),
('as', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}', 189),
('zx', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}', 190),
('zc', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}', 191),
('asdfs', '#include <bits/stdc++.h>\r\nusing namespace std;\r\n#define N 200005\r\n\r\nint main()\r\n{\r\n    int n, a[N], b[N];\r\n    cin>>n;\r\n\r\n    for(int i=0; i<n ; i++) cin>>a[i];\r\n    for(int i=0; i<n ; i++) cin>>b[i];\r\n\r\n\r\n\r\n\r\n\r\n\r\n}\r\n', 192),
('asdf', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 193),
('asdf', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 194),
('www', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 195),
('www123', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 196),
('tdd', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 197),
('dddt', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 198),
('rrr', '#include <stdio.h>\r\nint main()\r\n{\r\n    int a,b,i,j,n,sum;\r\n    scanf(\"%d\",&n);\r\n    for(i=1;i<=n;i++)\r\n    {\r\n        sum=0;\r\n        scanf(\"%d %d\",&a,&b);\r\n        sum=sum+a+b;\r\n        printf(\"Case %d: %d\n\",i,sum);\r\n    }\r\n    return 0;\r\n\r\n}\r\n', 199);

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
(123, 'Miles Ahead Ad-hoc Contest 1', 'Does it matter?', 'After that the code will select a random problem for you from my problems database based on your previously solved problems, your skills and your weaknesses. But while I was coding for implementing this great idea, I found that, all of my problems are scattered in 2 computers. So, I have to merge them before running my code.\r\n\r\nNow you are given the number of problems in each of the computers, you have to find the total number of problems. You can safely assume that no problem is stored in multiple computers. So, all the problems are distinct.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 125), denoting the number of test cases.\r\n\r\nEach case starts with a line containing two integers a and b. a denotes the number of problems in the first computer and b denotes the number of problems in the second computer. You can safely assume that a and b will be non-negative and not greater than 10.\r\n\r\nOutput\r\nFor each case, print the case number and the total number of problems. See the samples for exact formatting.\r\n\r\nSample Input\r\n2\r\n1 7\r\n9 8\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: 8\r\nCase 2: 17\r\n', NULL, '2\r\n1 7\r\n9 8\r\n', 'Case 1: 8\r\nCase 2: 17\r\n', 'Case 1: 8\nCase 2: 17\n', 123),
(1212, 'C Programming Lab 1', 'problem-2', 'problem2 des', 'none', 'example', 'example', 'example', 322),
(125, 'A Running Contest', 'All about greetings', 'After that the code will select a random problem for you from my problems database based on your previously solved problems, your skills and your weaknesses. But while I was coding for implementing this great idea, I found that, all of my problems are scattered in 2 computers. So, I have to merge them before running my code.\r\n\r\nNow you are given the number of problems in each of the computers, you have to find the total number of problems. You can safely assume that no problem is stored in multiple computers. So, all the problems are distinct.\r\n\r\nInput\r\nInput starts with an integer T (â‰¤ 125), denoting the number of test cases.\r\n\r\nEach case starts with a line containing two integers a and b. a denotes the number of problems in the first computer and b denotes the number of problems in the second computer. You can safely assume that a and b will be non-negative and not greater than 10.\r\n\r\nOutput\r\nFor each case, print the case number and the total number of problems. See the samples for exact formatting.\r\n\r\nSample Input\r\n2\r\n1 7\r\n9 8\r\n\r\nOutput for Sample Input\r\n\r\nCase 1: 8\r\nCase 2: 17\r\n', 'collected', '2\r\n1 7\r\n9 8\r\n', 'Case 1: 8\r\nCase 2: 17\r\n', 'Case 1: 8\nCase 2: 17\n', 1125),
(127, 'Miles Ahead Ad-hoc Contest 1', 'Deja Vu', '                                             Deja Vu\r\n                                        time limit per test2 seconds\r\n                                      memory limit per test256 megabytes\r\n\r\n\r\nYou are given an array a\r\n of length n\r\n, consisting of positive integers, and an array x\r\n of length q\r\n, also consisting of positive integers.\r\n\r\nThere are q\r\n modification. On the i\r\n-th modification (1?i?q\r\n), for each j\r\n (1?j?n\r\n), such that aj\r\n is divisible by 2xi\r\n, you add 2xi?1\r\n to aj\r\n. Note that xi\r\n (1?xi?30\r\n) is a positive integer not exceeding 30.\r\n\r\nAfter all modification queries, you need to output the final array.\r\n\r\nInput\r\nThe first line contains a single integer t\r\n (1?t?104\r\n) — the number of test cases. The description of the test cases follows.\r\n\r\nThe first line of each test case contains two integers n\r\n and q\r\n (1?n,q?105\r\n) —the length of the array a\r\n and the number of queries respectively.\r\n\r\nThe second line of each test case contains n\r\n integers a1,a2,a3,…,an\r\n — the elements of the array a\r\n (1?ai?109\r\n).\r\n\r\nThe third line of each test case contains q\r\n integers x1,x2,x3,…,xq\r\n — the elements of the array x\r\n (1?xi?30\r\n), which are the modification queries.\r\n\r\nIt is guaranteed that the sum of n\r\n and the sum of q\r\n across all test cases does not exceed 2?105\r\n.\r\n\r\nOutput\r\nFor each test case, output the array after all of the modification queries.', NULL, NULL, NULL, NULL, 1126),
(128, 'Miles Ahead Ad-hoc Contest 1', 'Time Travel', 'Time Travel\r\ntime limit per test2 seconds\r\nmemory limit per test512 megabytes\r\ninputstandard input\r\noutputstandard output\r\nBerland is a country with ancient history, where roads were built and destroyed for centuries. It is known that there always were n\r\n cities in Berland. You also have records of t\r\n key moments in the history of the country, numbered from 1\r\n to t\r\n. Each record contains a list of bidirectional roads between some pairs of cities, which could be used for travel in Berland at a specific moment in time.\r\n\r\nYou have discovered a time machine that transports you between key moments. Unfortunately, you cannot choose what point in time to end up at, but you know the order consisting of k\r\n moments in time ai\r\n, in which the machine will transport you. Since there is little time between the travels, when you find yourself in the next key moment in time (including after the last time travel), you can travel on at most one existing road at that moment, coming out from the city you were in before time travel.\r\n\r\nCurrently, you are in city 1\r\n, and the time machine has already transported you to moment a1\r\n. You want to reach city n\r\n as quickly as possible. Determine the minimum number of time travels, including the first one, that you need to make in order to reach city n\r\n.\r\n\r\nInput\r\nThe first line contains two integers n\r\n and t\r\n (2?n?2?105,1?t?2?105\r\n) — the number of cities in Berland and the number of records about key moments in history. Then follows the description of each of the t\r\n records.\r\n\r\nThe first line of each record description contains a single integer mi\r\n (0?mi?min(n(n?1)2,2?105)\r\n) — the number of roads in the i\r\n-th record.\r\n\r\nEach of the next mi\r\n lines contains two integers vj\r\n and uj\r\n (1?vj,uj?n\r\n, vj?uj\r\n) — the numbers of cities connected by the j\r\n-th road in the i\r\n-th key moment in history.\r\n\r\nThe next line contains a single integer k\r\n (1?k?2?105\r\n) — the number of time moments between which movements will occur.\r\n\r\nThe next line contains k\r\n integers a1,a2,…,ak\r\n (1?ai?t\r\n) — the time moments at which you will be after each movement.\r\n\r\nIt is guaranteed that the sum of mi\r\n does not exceed 2?105\r\n. It is guaranteed that each unordered pair (u,v)\r\n occurs in the road description for one record no more than once.\r\n\r\nOutput\r\nOutput a single integer — the minimum number of time travels required to reach city n\r\n from city 1\r\n, or ?1\r\n if it is impossible.\r\n\r\nNote that movement to time moment a1\r\n is also considered a movement.', NULL, NULL, NULL, NULL, 1127),
(129, 'Miles Ahead Ad-hoc Contest 1', 'Look Back', 'Look Back\r\ntime limit per test1 second\r\nmemory limit per test256 megabytes\r\ninputstandard input\r\noutputstandard output\r\nYou are given an array of integers a1,a2,…,an\r\n. You need to make it non-decreasing with the minimum number of operations. In one operation, you do the following:\r\n\r\nChoose an index 1?i?n\r\n,\r\nSet ai=ai?2\r\n.\r\nAn array b1,b2,…,bn\r\n is non-decreasing if bi?bi+1\r\n for all 1?i<n\r\n.\r\n\r\nInput\r\nEach test consists of multiple test cases. The first line contains a single integer t\r\n (1?t?104\r\n) — the number of test cases. This is followed by their description.\r\n\r\nThe first line of each test case contains an integer n\r\n (1?n?105\r\n) — the size of the array a\r\n.\r\n\r\nThe second line of each test case contains n\r\n integers a1,a2,…,an\r\n (1?ai?109\r\n).\r\n\r\nIt is guaranteed that the sum of n\r\n over all test cases does not exceed 2?105\r\n.\r\n\r\nOutput\r\nFor each test case, output the minimum number of operations needed to make the array non-decreasing.', NULL, NULL, NULL, NULL, 1128),
(130, 'Miles Ahead Ad-hoc Contest 1', 'Tree XOR', 'Tree XOR\r\ntime limit per test3 seconds\r\nmemory limit per test512 megabytes\r\ninputstandard input\r\noutputstandard output\r\nYou are given a tree with n\r\n vertices labeled from 1\r\n to n\r\n. An integer ai\r\n is written on vertex i\r\n for i=1,2,…,n\r\n. You want to make all ai\r\n equal by performing some (possibly, zero) spells.\r\n\r\nSuppose you root the tree at some vertex. On each spell, you can select any vertex v\r\n and any non-negative integer c\r\n. Then for all vertices i\r\n in the subtree†\r\n of v\r\n, replace ai\r\n with ai?c\r\n. The cost of this spell is s?c\r\n, where s\r\n is the number of vertices in the subtree. Here ?\r\n denotes the bitwise XOR operation.\r\n\r\nLet mr\r\n be the minimum possible total cost required to make all ai\r\n equal, if vertex r\r\n is chosen as the root of the tree. Find m1,m2,…,mn\r\n.\r\n\r\n†\r\n Suppose vertex r\r\n is chosen as the root of the tree. Then vertex i\r\n belongs to the subtree of v\r\n if the simple path from i\r\n to r\r\n contains v\r\n.\r\n\r\nInput\r\nEach test contains multiple test cases. The first line contains the number of test cases t\r\n (1?t?104\r\n). The description of the test cases follows.\r\n\r\nThe first line of each test case contains a single integer n\r\n (1?n?2?105\r\n).\r\n\r\nThe second line of each test case contains n\r\n integers a1,a2,…,an\r\n (0?ai<220\r\n).\r\n\r\nEach of the next n?1\r\n lines contains two integers u\r\n and v\r\n (1?u,v?n\r\n), denoting that there is an edge connecting two vertices u\r\n and v\r\n.\r\n\r\nIt is guaranteed that the given edges form a tree.\r\n\r\nIt is guaranteed that the sum of n\r\n over all test cases does not exceed 2?105\r\n.\r\n\r\nOutput\r\nFor each test case, print m1,m2,…,mn\r\n on a new line.', NULL, NULL, NULL, NULL, 1129),
(131, 'Miles Ahead Ad-hoc Contest 1', 'Iva & Pav', '\r\n\r\nIva & Pav\r\ntime limit per test5 seconds\r\nmemory limit per test256 megabytes\r\n\r\n\r\n\r\nIva and Pav are a famous Serbian competitive programming couple. In Serbia, they call Pav \"papuca\" and that\'s why he will make all of Iva\'s wishes come true.\r\n\r\nIva gave Pav an array a\r\n of n\r\n elements.\r\n\r\nLet\'s define f(l,r)=al & al+1 &…& ar\r\n (here &\r\n denotes the bitwise AND operation).\r\n\r\nNote that f(l,r)\r\n is not defined when l>r\r\n.\r\n\r\nIva also gave Pav q\r\n queries.\r\n\r\nEach query consists of 2 numbers, k\r\n and l\r\n, and she wants Pav to find the largest index r\r\n (l?r?n\r\n), such that f(l,r)?k\r\n.\r\n\r\nPav wants to solve this problem fast because he doesn\'t want to upset Iva. He needs your help.\r\n\r\nInput\r\nThe first line contains a single integer t\r\n (1?t?104\r\n) — the number of test cases.\r\n\r\nThe first line of each test case contains a single integer n\r\n (1?n?2?105\r\n) — the length of array a\r\n.\r\n\r\nThe second line of each test case contains n\r\n integers a1,a2,…,an\r\n (1?ai?109\r\n) — the elements of array a\r\n.\r\n\r\nThe third line of each test case contains a single integer q\r\n (1?q?105\r\n) — the number of queries Iva gave Pav.\r\n\r\nThe next q\r\n lines of each test case contains two numbers, l\r\n and k\r\n (1?l?n\r\n, 1?k?109\r\n) — the left bound for the subsegment, and the integer k\r\n described in statement.\r\n\r\nIt is guaranteed that the sum of n\r\n over all test cases does not exceed 2?105\r\n. Also, it is guaranteed that the sum of q\r\n over all test cases does not exceed 2?105\r\n.\r\n\r\nOutput\r\nFor each query output maximal index r\r\n (l?r?n\r\n) such that al & al+1 &…& ar ? k\r\n.\r\n\r\nIf such r\r\n doesn\'t exist, output ?1\r\n.', NULL, NULL, NULL, NULL, 1130),
(132, 'Miles Ahead Ad-hoc Contest 1', 'Make It Zero', 'Make It Zero\r\ntime limit per test1 second\r\nmemory limit per test256 megabytes\r\ninputstandard input\r\noutputstandard output\r\nDuring Zhongkao examination, Reycloer met an interesting problem, but he cannot come up with a solution immediately. Time is running out! Please help him.\r\n\r\nInitially, you are given an array a\r\n consisting of n?2\r\n integers, and you want to change all elements in it to 0\r\n.\r\n\r\nIn one operation, you select two indices l\r\n and r\r\n (1?l?r?n\r\n) and do the following:\r\n\r\nLet s=al?al+1?…?ar\r\n, where ?\r\n denotes the bitwise XOR operation;\r\nThen, for all l?i?r\r\n, replace ai\r\n with s\r\n.\r\nYou can use the operation above in any order at most 8\r\n times in total.\r\n\r\nFind a sequence of operations, such that after performing the operations in order, all elements in a\r\n are equal to 0\r\n. It can be proven that the solution always exists.\r\n\r\nInput\r\nThe first line of input contains a single integer t\r\n (1?t?500\r\n) — the number of test cases. The description of test cases follows.\r\n\r\nThe first line of each test case contains a single integer n\r\n (2?n?100\r\n) — the length of the array a\r\n.\r\n\r\nThe second line of each test case contains n\r\n integers a1,a2,…,an\r\n (0?ai?100\r\n) — the elements of the array a\r\n.\r\n\r\nOutput\r\nFor each test case, in the first line output a single integer k\r\n (0?k?8\r\n) — the number of operations you use.\r\n\r\nThen print k\r\n lines, in the i\r\n-th line output two integers li\r\n and ri\r\n (1?li?ri?n\r\n) representing that you select li\r\n and ri\r\n in the i\r\n-th operation.\r\n\r\nNote that you do not have to minimize k\r\n. If there are multiple solutions, you may output any of them.', NULL, NULL, NULL, NULL, 1131),
(133, 'Miles Ahead Ad-hoc Contest 1', 'LIS?', 'LIS?\r\ntime limit per test5 seconds\r\nmemory limit per test1024 megabytes\r\ninputstandard input\r\noutputstandard output\r\nEntering senior high school life, Tom is attracted by LIS problems, not only the Longest Increasing Subsequence problem, but also the Largest Interval Sum problem. Now he gets a really interesting problem from his friend Daniel. However, it seems too hard for him to solve it, so he asks you for help.\r\n\r\nGiven an array a\r\n consisting of n\r\n integers.\r\n\r\nIn one operation, you do the following:\r\n\r\nSelect an interval [l,r]\r\n (1?l?r?n\r\n), such that the sum of the interval is the largest among all intervals in the array a\r\n. More formally, ?i=lrai=max1?l??r??n?i=l?r?ai\r\n.\r\nThen subtract 1\r\n from all elements al,al+1,…,ar\r\n.\r\nFind the minimum number of operations you need to perform to make ai<0\r\n for every 1?i?n\r\n.\r\n\r\nInput\r\nThe first line of input contains a single integer n\r\n (1?n?5?105\r\n) — the length of the array a\r\n.\r\n\r\nThe second line contains n\r\n integers a1,a2,…,an\r\n (?106?ai?106\r\n) — the elements of the array a\r\n.\r\n\r\nOutput\r\nPrint a single integer — the minimum number of operations.', NULL, NULL, NULL, NULL, 1132),
(134, 'Miles Ahead Ad-hoc Contest 2', 'Divisor Chain', 'Divisor Chain\r\ntime limit per test1 second\r\nmemory limit per test256 megabytes\r\ninputstandard input\r\noutputstandard output\r\nYou are given an integer x\r\n. Your task is to reduce x\r\n to 1\r\n.\r\n\r\nTo do that, you can do the following operation:\r\n\r\nselect a divisor d\r\n of x\r\n, then change x\r\n to x?d\r\n, i.e. reduce x\r\n by d\r\n. (We say that d\r\n is a divisor of x\r\n if d\r\n is an positive integer and there exists an integer q\r\n such that x=d?q\r\n.)\r\nThere is an additional constraint: you cannot select the same value of d\r\n more than twice.\r\n\r\nFor example, for x=5\r\n, the following scheme is invalid because 1\r\n is selected more than twice: 5???14???13???12???11\r\n. The following scheme is however a valid one: 5???14???22???11\r\n.\r\n\r\nOutput any scheme which reduces x\r\n to 1\r\n with at most 1000\r\n operations. It can be proved that such a scheme always exists.\r\n\r\nInput\r\nEach test contains multiple test cases. The first line contains the number of test cases t\r\n (1?t?1000\r\n). The description of the test cases follows.\r\n\r\nThe only line of each test case contains a single integer x\r\n (2?x?109\r\n).\r\n\r\nOutput\r\nFor each test case, output two lines.\r\n\r\nThe first line should contain an integer k\r\n (1?k?1001\r\n).\r\n\r\nThe next line should contain k\r\n integers a1,a2,…,ak\r\n, which satisfy the following:\r\n\r\na1=x\r\n;\r\nak=1\r\n;\r\nfor each 2?i?k\r\n, the value (ai?1?ai)\r\n is a divisor of ai?1\r\n. Each number may occur as a divisor at most twice.', NULL, NULL, NULL, NULL, 1133),
(135, 'Miles Ahead Ad-hoc Contest 1', 'Swap and Reverse', 'Swap and Reverse\r\ntime limit per test1 second\r\nmemory limit per test256 megabytes\r\ninputstandard input\r\noutputstandard output\r\nYou are given a string s\r\n of length n\r\n consisting of lowercase English letters, and an integer k\r\n. In one step you can perform any one of the two operations below:\r\n\r\nPick an index i\r\n (1?i?n?2\r\n) and swap si\r\n and si+2\r\n.\r\nPick an index i\r\n (1?i?n?k+1\r\n) and reverse the order of letters formed by the range [i,i+k?1]\r\n of the string. Formally, if the string currently is equal to s1…si?1sisi+1…si+k?2si+k?1si+k…sn?1sn\r\n, change it to s1…si?1si+k?1si+k?2…si+1sisi+k…sn?1sn\r\n.\r\nYou can make as many steps as you want (possibly, zero). Your task is to find the lexicographically smallest string you can obtain after some number of steps.\r\n\r\nA string a\r\n is lexicographically smaller than a string b\r\n of the same length if and only if the following holds:\r\n\r\nin the first position where a\r\n and b\r\n differ, the string a\r\n has a letter that appears earlier in the alphabet than the corresponding letter in b\r\n.\r\nInput\r\nEach test contains multiple test cases. The first line contains the number of test cases t\r\n (1?t?104\r\n). The description of the test cases follows.\r\n\r\nThe first line of each test case contains two integers n\r\n and k\r\n (1?k<n?105\r\n).\r\n\r\nThe second line of each test case contains the string s\r\n of length n\r\n consisting of lowercase English letters.\r\n\r\nIt is guaranteed that the sum of n\r\n over all test cases does not exceed 105\r\n.\r\n\r\nOutput\r\nFor each test case, print the lexicographically smallest string after doing some (possibly, zero) steps.', NULL, NULL, NULL, NULL, 1134),
(136, 'Miles Ahead Ad-hoc Contest 2', 'Guess Game', 'Guess Game\r\ntime limit per test3 seconds\r\nmemory limit per test256 megabytes\r\ninputstandard input\r\noutputstandard output\r\nCarol has a sequence s\r\n of n\r\n non-negative integers. She wants to play the \"Guess Game\" with Alice and Bob.\r\n\r\nTo play the game, Carol will randomly select two integer indices ia\r\n and ib\r\n within the range [1,n]\r\n, and set a=sia\r\n, b=sib\r\n. Please note that ia\r\n and ib\r\n may coincide.\r\n\r\nCarol will tell:\r\n\r\nthe value of a\r\n to Alice;\r\nthe value of b\r\n to Bob;\r\nthe value of a?b\r\n to both Alice and Bob, where |\r\n denotes the bitwise OR operation.\r\nPlease note that Carol will not tell any information about s\r\n to either Alice or Bob.\r\n\r\nThen the guessing starts. The two players take turns making guesses, with Alice starting first. The goal of both players is to establish which of the following is true: a<b\r\n, a>b\r\n, or a=b\r\n.\r\n\r\nIn their turn, a player can do one of the following two things:\r\n\r\nsay \"I don\'t know\", and pass the turn to the other player;\r\nsay \"I know\", followed by the answer \"a<b\r\n\", \"a>b\r\n\", or \"a=b\r\n\"; then the game ends.\r\nAlice and Bob hear what each other says, and can use this information to deduce the answer. Both Alice and Bob are smart enough and only say \"I know\" when they are completely sure.\r\n\r\nYou need to calculate the expected value of the number of turns taken by players in the game. Output the answer modulo 998244353\r\n.\r\n\r\nFormally, let M=998244353\r\n. It can be shown that the answer can be expressed as an irreducible fraction pq\r\n, where p\r\n and q\r\n are integers and q??0(modM)\r\n. Output the integer equal to p?q?1modM\r\n. In other words, output such an integer x\r\n that 0?x<M\r\n and x?q?p(modM)\r\n.\r\n\r\nInput\r\nEach test contains multiple test cases. The first line contains the number of test cases t\r\n (1?t?105\r\n). The description of the test cases follows.\r\n\r\nThe first line of each testcase contains a single integer n\r\n (1?n?2?105\r\n).\r\n\r\nThe second line of each testcase contains n\r\n integers s1,s2,…,sn\r\n (0?si<230\r\n).\r\n\r\nIt is guaranteed that the sum of n\r\n over all test cases does not exceed 2?105\r\n.\r\n\r\nOutput\r\nFor each test case, print a single integer — the answer to the problem modulo 998244353\r\n.', NULL, NULL, NULL, NULL, 1135),
(137, 'Miles Ahead Ad-hoc Contest 1', 'Swaps?', 'Swaps\r\ntime limit per test2 seconds\r\nmemory limit per test256 megabytes\r\ninputstandard input\r\noutputstandard output\r\nYou are given an array of integers a1,a2,…,an\r\n (1?ai?n\r\n). You can perform the following operation several (possibly, zero) times:\r\n\r\npick an arbitrary i\r\n and perform swap(ai,aai)\r\n.\r\nHow many distinct arrays is it possible to attain? Output the answer modulo (109+7)\r\n.\r\n\r\nInput\r\nThe first line contains an integer n\r\n (1?n?106\r\n).\r\n\r\nThe second line contains n\r\n integers a1,a2,…,an\r\n (1?ai?n\r\n).\r\n\r\nOutput\r\nOutput the number of attainable arrays modulo (109+7)\r\n.', NULL, NULL, NULL, NULL, 1136);

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
(1, 'Miles Ahead Ad-hoc Contest 1', '00:00:00', '23:00:00', '2023-11-23', 'analytical'),
(2, 'Miles Ahead Ad-hoc Contest 2', '00:00:00', '00:40:00', '2023-11-23', 'analytical'),
(3, 'C Programming Contest 1', '10:00:00', '23:00:00', '2017-03-27', 'c'),
(6, 'Toph Contest 2', '22:00:00', '01:00:00', '2016-10-10', 'c'),
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
(184, 'sumi', 'Wrong Answer', 'asdf', 3333, 0, -5.00),
(185, 'asdf', 'Accepted', 'Does it matter?', 123, 1, 194.98),
(187, 'as', 'Wrong Answer', 'Does it matter?', 123, 0, -5.00),
(188, 'as', 'Accepted', 'Does it matter?', 123, 1, 161.82),
(190, 'zx', 'Accepted', 'Does it matter?', 123, 1, 157.60),
(191, 'zc', 'Accepted', 'Does it matter?', 123, 1, 157.05),
(192, 'asdfs', 'Wrong Answer', 'Does it matter?', 123, 0, -5.00),
(194, 'asdf', 'Accepted', 'All about greetings', 125, 1, 178.51),
(195, 'www', 'Accepted', 'All about greetings', 125, 1, 177.69),
(196, 'www123', 'Accepted', 'All about greetings', 125, 1, 174.17),
(197, 'tdd', 'Accepted', 'All about greetings', 125, 1, 172.22),
(198, 'dddt', 'Accepted', 'All about greetings', 125, 1, 170.39),
(199, 'rrr', 'Accepted', 'All about greetings', 125, 1, 74.68);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `element`
--
ALTER TABLE `element`
  MODIFY `pbid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
