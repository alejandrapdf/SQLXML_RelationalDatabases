-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: devweb2023.cis.strath.ac.uk:3306
-- Generation Time: Mar 12, 2024 at 06:50 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clb19138`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `current_employee_team`
-- (See below for the actual view)
--
CREATE TABLE `current_employee_team` (
`employeeID` varchar(36)
,`name` varchar(255)
,`team_formed_on` datetime
,`teamID` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentID` bigint NOT NULL,
  `departmentName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentID`, `departmentName`) VALUES
(1, 'Engineering'),
(2, 'Admin'),
(3, 'HR'),
(4, 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(255) NOT NULL,
  `employeeID` varchar(36) NOT NULL,
  `jobID` bigint NOT NULL,
  `officeID` bigint NOT NULL,
  `departmentID` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `employeeID`, `jobID`, `officeID`, `departmentID`) VALUES
('Katherine Jones', '0dd9255b-8178-46c1-9842-341474cd18bf', 2, 3, 1),
('Donald Chamberlin', '197a15a8-e9c7-47a3-9427-129be93b05f2', 2, 2, 1),
('Lucy Bain', '2d44de0c-e3cd-436c-90b4-75c9b94cb464', 2, 3, 1),
('John Carmichael', '7ee3b93b-0232-4c47-bcf8-a22e4aadcdad', 2, 3, 1),
('Nikoli Tesla', '8d2687fc-beda-41b4-8b42-a19d0b4f404f', 1, 1, 2),
('Peter Kay', '9ba48d84-9eb8-41a9-9229-2859719421d2', 2, 2, 1),
('Ada Lovelace', 'bd506395-5669-47d6-8fd5-28dd4fa600ed', 1, 1, 3),
('Raymond Boyce', 'cd95b2ef-29ff-4b4c-9ede-dee8539c1a4b', 2, 2, 1),
('Alan Turing', 'e3f9767a-a559-48e9-9f7a-ba22dae94950', 1, 1, 4),
('Michael Bubble', 'f0629e8d-2569-4ca6-b5c9-4bd75cf6bacc', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_role`
--

CREATE TABLE `employee_role` (
  `roleID` bigint NOT NULL,
  `employeeID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee_role`
--

INSERT INTO `employee_role` (`roleID`, `employeeID`) VALUES
(1, '0dd9255b-8178-46c1-9842-341474cd18bf'),
(4, '0dd9255b-8178-46c1-9842-341474cd18bf'),
(1, '197a15a8-e9c7-47a3-9427-129be93b05f2'),
(4, '197a15a8-e9c7-47a3-9427-129be93b05f2'),
(5, '2d44de0c-e3cd-436c-90b4-75c9b94cb464'),
(1, '7ee3b93b-0232-4c47-bcf8-a22e4aadcdad'),
(2, '8d2687fc-beda-41b4-8b42-a19d0b4f404f'),
(5, '9ba48d84-9eb8-41a9-9229-2859719421d2'),
(2, 'bd506395-5669-47d6-8fd5-28dd4fa600ed'),
(1, 'cd95b2ef-29ff-4b4c-9ede-dee8539c1a4b'),
(3, 'e3f9767a-a559-48e9-9f7a-ba22dae94950'),
(1, 'f0629e8d-2569-4ca6-b5c9-4bd75cf6bacc');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobID` bigint NOT NULL,
  `jobType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobID`, `jobType`) VALUES
(1, 'Admin'),
(2, 'Software');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `monthID` smallint NOT NULL,
  `monthName` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`monthID`, `monthName`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `officeID` bigint NOT NULL,
  `officeLocation` varchar(255) NOT NULL,
  `officeNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`officeID`, `officeLocation`, `officeNumber`) VALUES
(1, 'Livi Tower', '839'),
(2, 'Tech Plaza', '317'),
(3, 'Royal College', '8181');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `projectID` varchar(36) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `categoryID` bigint NOT NULL,
  `typeID` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projectID`, `name`, `categoryID`, `typeID`) VALUES
('1c61798c-ece2-4484-b27d-d97c1a4f1c27', 'Cerberus', 1, 1),
('a073c644-39bc-4629-bbe9-b4329d4e8c07', 'Magnolia', 2, 2),
('a2d16aad-e228-4f29-af65-bc48a65b9231', 'Jupiter', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE `project_category` (
  `categoryID` bigint NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`categoryID`, `name`) VALUES
(1, 'Educational Software'),
(2, 'Enterprise Software'),
(3, 'Healthcare Software');

-- --------------------------------------------------------

--
-- Table structure for table `project_record`
--

CREATE TABLE `project_record` (
  `projectRecordID` bigint NOT NULL,
  `projectID` varchar(36) NOT NULL,
  `monthID` smallint NOT NULL,
  `taskId` bigint NOT NULL,
  `completionPercentage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_record`
--

INSERT INTO `project_record` (`projectRecordID`, `projectID`, `monthID`, `taskId`, `completionPercentage`) VALUES
(1, '1c61798c-ece2-4484-b27d-d97c1a4f1c27', 1, 1, 100),
(2, '1c61798c-ece2-4484-b27d-d97c1a4f1c27', 5, 2, 40),
(3, '1c61798c-ece2-4484-b27d-d97c1a4f1c27', 3, 3, 30),
(4, '1c61798c-ece2-4484-b27d-d97c1a4f1c27', 6, 4, 10),
(5, 'a073c644-39bc-4629-bbe9-b4329d4e8c07', 8, 1, 80),
(6, 'a073c644-39bc-4629-bbe9-b4329d4e8c07', 9, 2, 30),
(7, 'a073c644-39bc-4629-bbe9-b4329d4e8c07', 10, 3, 75),
(8, 'a073c644-39bc-4629-bbe9-b4329d4e8c07', 11, 4, 45);

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `taskID` bigint NOT NULL,
  `taskType` bigint NOT NULL,
  `taskWeight` enum('1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_task`
--

INSERT INTO `project_task` (`taskID`, `taskType`, `taskWeight`) VALUES
(1, 1, '2'),
(2, 2, '3'),
(3, 3, '4'),
(4, 4, '5');

-- --------------------------------------------------------

--
-- Table structure for table `project_task_type`
--

CREATE TABLE `project_task_type` (
  `taskCode` bigint NOT NULL,
  `taskName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_task_type`
--

INSERT INTO `project_task_type` (`taskCode`, `taskName`) VALUES
(1, 'Frontend Design'),
(2, 'Frontend Development'),
(3, 'Backend Design'),
(4, 'Backend Development');

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `typeID` bigint NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`typeID`, `name`) VALUES
(1, 'Web App'),
(2, 'Desktop App'),
(3, 'Mobile App'),
(4, 'AI Software');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` bigint NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `jobID` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `roleName`, `jobID`) VALUES
(1, 'Software Developer', 2),
(2, 'Administrator', 1),
(3, 'Head of Finance', 1),
(4, 'Project Manager', 2),
(5, 'UI UX Developer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamID` bigint NOT NULL,
  `team_formed_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `projectID` varchar(36) DEFAULT NULL,
  `managerID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamID`, `team_formed_on`, `projectID`, `managerID`) VALUES
(1, '2024-03-05 18:08:44', '1c61798c-ece2-4484-b27d-d97c1a4f1c27', '197a15a8-e9c7-47a3-9427-129be93b05f2'),
(2, '2024-03-06 18:08:44', 'a073c644-39bc-4629-bbe9-b4329d4e8c07', '0dd9255b-8178-46c1-9842-341474cd18bf');

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `teamID` bigint NOT NULL,
  `employeeID` varchar(36) NOT NULL,
  `taskID` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`teamID`, `employeeID`, `taskID`) VALUES
(1, '197a15a8-e9c7-47a3-9427-129be93b05f2', 3),
(1, '2d44de0c-e3cd-436c-90b4-75c9b94cb464', 4),
(1, '9ba48d84-9eb8-41a9-9229-2859719421d2', 1),
(1, 'cd95b2ef-29ff-4b4c-9ede-dee8539c1a4b', 2),
(2, '0dd9255b-8178-46c1-9842-341474cd18bf', 3),
(2, '2d44de0c-e3cd-436c-90b4-75c9b94cb464', 1),
(2, '7ee3b93b-0232-4c47-bcf8-a22e4aadcdad', 4),
(2, 'f0629e8d-2569-4ca6-b5c9-4bd75cf6bacc', 2);

-- --------------------------------------------------------

--
-- Structure for view `current_employee_team`
--
DROP TABLE IF EXISTS `current_employee_team`;

CREATE ALGORITHM=UNDEFINED DEFINER=`clb19138`@`%` SQL SECURITY DEFINER VIEW `current_employee_team`  AS SELECT `e`.`employeeID` AS `employeeID`, `e`.`name` AS `name`, `t`.`teamID` AS `teamID`, `t`.`team_formed_on` AS `team_formed_on` FROM (((`employee` `e` join `team_member` `tm` on((`tm`.`employeeID` = `e`.`employeeID`))) join (select `e`.`employeeID` AS `employeeID`,max(`t`.`team_formed_on`) AS `team_formed_on` from ((`employee` `e` join `team_member` `tm` on((`tm`.`employeeID` = `e`.`employeeID`))) join `team` `t` on((`t`.`teamID` = `tm`.`teamID`))) group by `e`.`employeeID` order by `team_formed_on`) `lt` on((`e`.`employeeID` = `lt`.`employeeID`))) join `team` `t` on((`t`.`teamID` = `tm`.`teamID`))) WHERE ((`t`.`team_formed_on` = `lt`.`team_formed_on`) AND (`e`.`employeeID` = `lt`.`employeeID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `fk1job` (`jobID`),
  ADD KEY `fk2off` (`officeID`),
  ADD KEY `fk3dep` (`departmentID`);

--
-- Indexes for table `employee_role`
--
ALTER TABLE `employee_role`
  ADD PRIMARY KEY (`roleID`,`employeeID`),
  ADD KEY `fk2emp` (`employeeID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`monthID`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`officeID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectID`),
  ADD KEY `fk1cat` (`categoryID`),
  ADD KEY `fk2type` (`typeID`);

--
-- Indexes for table `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `project_record`
--
ALTER TABLE `project_record`
  ADD PRIMARY KEY (`projectRecordID`),
  ADD KEY `fk1mon` (`monthID`),
  ADD KEY `fk2pro` (`projectID`),
  ADD KEY `fk3tsk` (`taskId`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`taskID`),
  ADD KEY `task_to_task_type` (`taskType`);

--
-- Indexes for table `project_task_type`
--
ALTER TABLE `project_task_type`
  ADD PRIMARY KEY (`taskCode`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`typeID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`),
  ADD KEY `fk_job` (`jobID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamID`),
  ADD KEY `fk1proj` (`projectID`),
  ADD KEY `fk2man` (`managerID`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`teamID`,`employeeID`,`taskID`),
  ADD KEY `fk1team` (`teamID`),
  ADD KEY `fk2empteam` (`employeeID`),
  ADD KEY `fk1task` (`taskID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `monthID` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `officeID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_category`
--
ALTER TABLE `project_category`
  MODIFY `categoryID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_record`
--
ALTER TABLE `project_record`
  MODIFY `projectRecordID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_task`
--
ALTER TABLE `project_task`
  MODIFY `taskID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_task_type`
--
ALTER TABLE `project_task_type`
  MODIFY `taskCode` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
  MODIFY `typeID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `emp_department` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `emp_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `emp_office` FOREIGN KEY (`officeID`) REFERENCES `office` (`officeID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `employee_role`
--
ALTER TABLE `employee_role`
  ADD CONSTRAINT `fk1role` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`),
  ADD CONSTRAINT `fk2emp` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `fk1cat` FOREIGN KEY (`categoryID`) REFERENCES `project_category` (`categoryID`),
  ADD CONSTRAINT `fk2type` FOREIGN KEY (`typeID`) REFERENCES `project_type` (`typeID`);

--
-- Constraints for table `project_record`
--
ALTER TABLE `project_record`
  ADD CONSTRAINT `fk1mon` FOREIGN KEY (`monthID`) REFERENCES `month` (`monthID`),
  ADD CONSTRAINT `fk2pro` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`),
  ADD CONSTRAINT `fk3tsk` FOREIGN KEY (`taskId`) REFERENCES `project_task` (`taskID`);

--
-- Constraints for table `project_task`
--
ALTER TABLE `project_task`
  ADD CONSTRAINT `task_to_task_type` FOREIGN KEY (`taskType`) REFERENCES `project_task_type` (`taskCode`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `fk_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `fk1proj` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`),
  ADD CONSTRAINT `fk2man` FOREIGN KEY (`managerID`) REFERENCES `employee` (`employeeID`);

--
-- Constraints for table `team_member`
--
ALTER TABLE `team_member`
  ADD CONSTRAINT `fk1task` FOREIGN KEY (`taskID`) REFERENCES `project_task` (`taskID`),
  ADD CONSTRAINT `fk1team` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`),
  ADD CONSTRAINT `fk2empteam` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
