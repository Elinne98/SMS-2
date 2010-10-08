
# ---------------------------------------------------------


# phpMyAdmin SQL Dump
# version 2.5.3-rc1
# http://www.phpmyadmin.net
#
# Host: localhost
# Generation Time: Dec 11, 2004 at 08:13 PM
# Server version: 3.23.54
# PHP Version: 4.2.2
# 
# Database : `crcdb`
# 
#CREATE DATABASE `crcdb`;
#USE crcdb;

# --------------------------------------------------------

#
# Assign previliages to the database.
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Oct 03, 2003 at 06:15 PM
#
GRANT SELECT,INSERT,UPDATE,DELETE ON crcdb.* TO 'freesms_user'@'localhost' IDENTIFIED BY 'freesms';
GRANT SELECT,INSERT,UPDATE,DELETE ON crcdb.* TO 'freesms_user'@'%' IDENTIFIED BY 'freesms';

# We need to do this because the authentication
# scheme has changes from MySQL 4.1+ with a newer
# password hashing algorithm
UPDATE mysql.user SET Password = OLD_PASSWORD('freesms') WHERE User = 'freesms_user';
FLUSH PRIVILEGES;

# --------------------------------------------------------

#
# Table structure for table `crc_attendance`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Oct 03, 2003 at 06:15 PM
#

DROP TABLE IF EXISTS `crc_attendance`;
CREATE TABLE `crc_attendance` (
  `attendance_id` int(11) NOT NULL auto_increment,
  `attendance_student_schedule_id` int(11) NOT NULL default '0',
  `attendance_date_id` int(11) NOT NULL default '0',
  `attendance_check` char(1) NOT NULL default 'A',
  PRIMARY KEY  (`attendance_id`)
) TYPE=MyISAM AUTO_INCREMENT=75 ;

#
# Dumping data for table `crc_attendance`
#

INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (1, 3, 1, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (2, 3, 2, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (3, 3, 3, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (4, 3, 4, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (5, 3, 5, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (6, 3, 6, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (7, 3, 7, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (8, 3, 8, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (9, 2, 1, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (10, 2, 2, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (11, 2, 3, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (12, 2, 4, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (13, 2, 5, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (14, 2, 6, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (15, 2, 7, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (16, 2, 8, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (17, 7, 1, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (18, 7, 2, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (19, 7, 3, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (20, 7, 4, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (21, 7, 5, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (22, 7, 6, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (23, 7, 7, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (24, 7, 8, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (25, 4, 1, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (26, 4, 2, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (27, 4, 3, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (28, 4, 4, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (29, 4, 5, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (30, 4, 6, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (31, 4, 7, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (32, 4, 8, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (33, 5, 1, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (34, 5, 2, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (35, 5, 3, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (36, 5, 4, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (37, 5, 5, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (38, 5, 6, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (39, 5, 7, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (40, 5, 8, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (41, 6, 1, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (42, 6, 2, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (43, 6, 3, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (44, 6, 4, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (45, 6, 5, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (46, 6, 6, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (47, 6, 7, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (48, 6, 8, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (49, 30, 9, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (50, 30, 10, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (51, 30, 11, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (60, 24, 9, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (53, 30, 12, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (54, 30, 13, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (55, 22, 9, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (56, 22, 10, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (57, 22, 11, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (58, 22, 12, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (59, 22, 13, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (61, 24, 10, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (62, 24, 11, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (63, 24, 12, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (64, 24, 13, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (65, 28, 9, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (66, 28, 10, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (67, 28, 11, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (68, 28, 12, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (69, 28, 13, 'A');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (70, 29, 9, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (71, 29, 10, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (72, 29, 11, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (73, 29, 12, 'P');
INSERT INTO `crc_attendance` (`attendance_id`, `attendance_student_schedule_id`, `attendance_date_id`, `attendance_check`) VALUES (74, 29, 13, 'P');

# --------------------------------------------------------

#
# Table structure for table `crc_courses`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Aug 15, 2003 at 08:00 PM
#

DROP TABLE IF EXISTS `crc_courses`;
CREATE TABLE `crc_courses` (
  `course_id` int(11) NOT NULL auto_increment,
  `course_name` varchar(100) NOT NULL default '',
  `course_desc` varchar(255) default '',
  `course_active` tinyint(1) NOT NULL default '0',
  `course_fee` int(11) NOT NULL default '0',
  PRIMARY KEY  (`course_id`,`course_name`)
) TYPE=MyISAM AUTO_INCREMENT=13 ;

#
# Dumping data for table `crc_courses`
#

INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (1, 'Introduction to Microsoft Office XP', 'This course teashes the brief concept of Microsoft Office 2000 suite and its components. The course does not go into detail but just enough to be comfortable with the application.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (2, 'Introduction to Microsoft Windows XP', 'Basics of the Windows XP operating system.', 0, 40);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (3, 'Introduction to Microsoft Access XP', 'Intermediate level MS Access XP.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (4, 'Introduction to Microsoft Excel XP', 'Intermediate level MS Excel XP.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (5, 'Introduction to Microsoft Word XP', 'Intermediate level MS Word XP.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (6, 'Introduction to Microsoft ASP.NET', 'Basics of MS ASP.NET.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (7, 'Introduction to Microsoft ASP.NET', 'Basics of ASP.NET', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (8, 'Introduction to Microsoft C# (C-Sharp)', 'Basics of MS C-Sharp', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (9, 'Introduction to Java (SUN SDK)', 'Basics of the Java language.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (10, 'Oracle Database', 'Introduction to the Oracle database engine.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (11, 'Introduction to C/C++', 'Introduction to the C/C++ programming language.', 0, 140);
INSERT INTO `crc_courses` (`course_id`, `course_name`, `course_desc`, `course_active`, `course_fee`) VALUES (12, 'Visual Studio.NET Fundamentals', 'Visual Studio.NET Fundamentals', 0, 60);

# --------------------------------------------------------

#
# Table structure for table `crc_date`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Sep 17, 2003 at 06:20 PM
#

DROP TABLE IF EXISTS `crc_date`;
CREATE TABLE `crc_date` (
  `date_id` int(11) NOT NULL auto_increment,
  `date_day` char(2) NOT NULL default '',
  `date_month` char(2) NOT NULL default '',
  `date_year` varchar(4) NOT NULL default '',
  PRIMARY KEY  (`date_id`)
) TYPE=MyISAM AUTO_INCREMENT=14 ;

#
# Dumping data for table `crc_date`
#

INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (1, '03', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (2, '08', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (3, '10', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (4, '15', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (5, '17', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (6, '22', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (7, '24', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (8, '29', '07', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (9, '08', '09', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (10, '10', '09', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (11, '15', '09', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (12, '17', '09', '2003');
INSERT INTO `crc_date` (`date_id`, `date_day`, `date_month`, `date_year`) VALUES (13, '22', '09', '2003');

# --------------------------------------------------------

#
# Table structure for table `crc_feedback`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Nov 05, 2003 at 10:21 PM
#

DROP TABLE IF EXISTS `crc_feedback`;
CREATE TABLE `crc_feedback` (
  `feedback_id` int(11) NOT NULL auto_increment,
  `feedback_profile_id` int(11) NOT NULL default '0',
  `feedback_session_id` int(11) NOT NULL default '0',
  `feedback_date` timestamp(14) NOT NULL,
  `feedback_active` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`feedback_id`),
  KEY `feedback_profile_id` (`feedback_profile_id`,`feedback_session_id`)
) TYPE=MyISAM COMMENT='This table is facility to store feddback information from st' AUTO_INCREMENT=20 ;

#
# Dumping data for table `crc_feedback`
#

INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (5, 9, 4, 20030826214436, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (6, 8, 5, 20030826215053, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (7, 4, 3, 20030826215137, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (8, 2, 2, 20030826215206, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (9, 6, 7, 20030826220322, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (10, 7, 6, 20030826220404, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (11, 16, 30, 20030917205034, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (12, 14, 24, 20030917205409, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (13, 13, 22, 20030917205839, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (14, 17, 29, 20030917205945, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (15, 19, 34, 20031105221848, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (16, 20, 35, 20031105221942, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (17, 18, 33, 20031105222016, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (18, 13, 23, 20031105222022, 0);
INSERT INTO `crc_feedback` (`feedback_id`, `feedback_profile_id`, `feedback_session_id`, `feedback_date`, `feedback_active`) VALUES (19, 17, 32, 20031105222159, 0);

# --------------------------------------------------------

#
# Table structure for table `crc_feedback_answers`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Nov 05, 2003 at 10:21 PM
#

DROP TABLE IF EXISTS `crc_feedback_answers`;
CREATE TABLE `crc_feedback_answers` (
  `feedback_answers_id` int(11) NOT NULL auto_increment,
  `feedback_answers_feedback_id` int(11) NOT NULL default '0',
  `feedback_answers_questions_id` int(11) NOT NULL default '0',
  `feedback_answers_answer` text NOT NULL,
  `feedback_answers_active` tinyint(4) NOT NULL default '0',
  `feedback_answers_comments` text NOT NULL,
  PRIMARY KEY  (`feedback_answers_id`)
) TYPE=MyISAM AUTO_INCREMENT=449 ;

#
# Dumping data for table `crc_feedback_answers`
#

INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (29, 5, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (30, 5, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (31, 5, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (32, 5, 4, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (33, 5, 5, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (34, 5, 6, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (35, 5, 7, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (36, 5, 8, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (37, 5, 9, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (38, 5, 10, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (39, 5, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (40, 5, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (41, 5, 12, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (42, 5, 13, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (43, 5, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (44, 5, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (45, 5, 16, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (46, 5, 17, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (47, 5, 18, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (48, 5, 19, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (49, 5, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (50, 5, 21, '5', 0, 'excellent');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (51, 5, 22, '5', 0, 'very good knowledge');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (52, 5, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (53, 5, 24, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (54, 5, 25, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (55, 5, 26, 'a little more advanced course for people who know the basics.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (56, 5, 27, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (57, 6, 1, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (58, 6, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (59, 6, 3, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (60, 6, 4, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (61, 6, 5, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (62, 6, 6, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (63, 6, 7, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (64, 6, 8, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (65, 6, 9, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (66, 6, 10, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (67, 6, 11, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (68, 6, 28, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (69, 6, 12, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (70, 6, 13, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (71, 6, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (72, 6, 15, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (73, 6, 16, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (74, 6, 17, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (75, 6, 18, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (76, 6, 19, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (77, 6, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (78, 6, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (79, 6, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (80, 6, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (81, 6, 24, 'Friendly environment', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (82, 6, 25, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (83, 6, 26, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (84, 6, 27, 'Teacher behaviour was always excellent', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (85, 7, 1, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (86, 7, 2, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (87, 7, 3, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (88, 7, 4, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (89, 7, 5, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (90, 7, 6, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (91, 7, 7, '2', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (92, 7, 8, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (93, 7, 9, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (94, 7, 10, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (95, 7, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (96, 7, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (97, 7, 12, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (98, 7, 13, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (99, 7, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (100, 7, 15, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (101, 7, 16, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (102, 7, 17, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (103, 7, 18, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (104, 7, 19, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (105, 7, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (106, 7, 21, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (107, 7, 22, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (108, 7, 23, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (109, 7, 24, 'Ok', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (110, 7, 25, 'Have a video or a powerpoint presentation for the course so that the class progresses well in order to achive the objective of giving the same knowledge to all who take the course in all sessions(winter,fall and spring).', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (111, 7, 26, 'Web designing', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (112, 7, 27, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (113, 8, 1, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (114, 8, 2, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (115, 8, 3, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (116, 8, 4, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (117, 8, 5, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (118, 8, 6, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (119, 8, 7, '2', 0, 'Need more time to cover subject fully.');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (120, 8, 8, '2', 0, 'Inadequate time to cover the course fully.');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (121, 8, 9, '2', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (122, 8, 10, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (123, 8, 11, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (124, 8, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (125, 8, 12, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (126, 8, 13, '2', 0, 'Too little time for exercises.');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (127, 8, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (128, 8, 15, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (129, 8, 16, '3', 0, 'Access is most difficult and there wasn\'t adquaet time to devote to the course. May be, in future, Access should be taught as a subject on its own!');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (130, 8, 17, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (131, 8, 18, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (132, 8, 19, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (133, 8, 20, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (134, 8, 21, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (135, 8, 22, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (136, 8, 23, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (137, 8, 24, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (138, 8, 25, 'Since there were 5 topics covered, I think more time should be devoted to each course with more exercises.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (139, 8, 26, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (140, 8, 27, 'Alykhan is a very knowledgeable teacher and he was very helpful in answering questions.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (141, 9, 1, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (142, 9, 2, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (143, 9, 3, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (144, 9, 4, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (145, 9, 5, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (146, 9, 6, '4', 0, 'there should be two language for understand easy to listen and learn for everybody');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (147, 9, 7, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (148, 9, 8, '3', 0, 'it is little bit more expenses for everybody');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (149, 9, 9, '3', 0, 'it should be cheaper');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (150, 9, 10, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (151, 9, 11, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (152, 9, 28, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (153, 9, 12, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (154, 9, 13, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (155, 9, 14, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (156, 9, 15, '2', 0, 'teaching should be in a particular word  must be explain in detail on blackboard written how it work out rather than verbally');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (157, 9, 16, '3', 0, 'firtst course was excellent  and second ok');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (158, 9, 17, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (159, 9, 18, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (160, 9, 19, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (161, 9, 20, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (162, 9, 21, '3', 0, '1st excellent 2nd ok');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (163, 9, 22, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (164, 9, 23, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (165, 9, 24, 'keep on continued the course so that other can get opportunity everybody', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (166, 9, 25, 'better instructor clear and written describer work more classes', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (167, 9, 26, 'basic knowledge  and useful for everyday life routine', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (168, 9, 27, 'sorry and thank you', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (169, 10, 1, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (170, 10, 2, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (171, 10, 3, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (172, 10, 4, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (173, 10, 5, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (174, 10, 6, '4', 0, 'I wish the teacher spoke more than one language ex gujrathi');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (175, 10, 7, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (176, 10, 8, '4', 0, 'I wish it was little cheaper because not everybody make good money.');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (177, 10, 9, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (178, 10, 10, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (179, 10, 11, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (180, 10, 28, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (181, 10, 12, '4', 0, 'it would have been more easier if the teacher spoke more than one language.');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (182, 10, 13, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (183, 10, 14, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (184, 10, 15, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (185, 10, 16, '3', 0, 'same as above');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (186, 10, 17, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (187, 10, 18, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (188, 10, 19, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (189, 10, 20, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (190, 10, 21, '4', 0, 'same as above');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (191, 10, 22, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (192, 10, 23, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (193, 10, 24, 'overall everything was educational.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (194, 10, 25, 'maybe have like test so that we know that we learned something,would be really appreciated if teacher spoke more than one language because not ereryone first language is english and learning computer is hard enough.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (195, 10, 26, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (196, 10, 27, 'Thank-you for providing courses like this in khane. keep up the good job.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (197, 11, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (198, 11, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (199, 11, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (200, 11, 4, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (201, 11, 5, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (202, 11, 6, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (203, 11, 7, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (204, 11, 8, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (205, 11, 9, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (206, 11, 10, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (207, 11, 11, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (208, 11, 28, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (209, 11, 12, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (210, 11, 13, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (211, 11, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (212, 11, 15, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (213, 11, 16, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (214, 11, 17, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (215, 11, 18, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (216, 11, 19, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (217, 11, 20, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (218, 11, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (219, 11, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (220, 11, 23, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (221, 11, 24, 'the course it self.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (222, 11, 25, 'more practical time on the computer.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (223, 11, 26, 'web designing', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (224, 11, 27, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (225, 12, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (226, 12, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (227, 12, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (228, 12, 4, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (229, 12, 5, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (230, 12, 6, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (231, 12, 7, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (232, 12, 8, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (233, 12, 9, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (234, 12, 10, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (235, 12, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (236, 12, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (237, 12, 12, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (238, 12, 13, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (239, 12, 14, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (240, 12, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (241, 12, 16, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (242, 12, 17, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (243, 12, 18, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (244, 12, 19, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (245, 12, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (246, 12, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (247, 12, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (248, 12, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (249, 12, 24, 'instructor  was very good in explaining the  subject.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (250, 12, 25, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (251, 12, 26, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (252, 12, 27, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (253, 13, 1, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (254, 13, 2, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (255, 13, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (256, 13, 4, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (257, 13, 5, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (258, 13, 6, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (259, 13, 7, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (260, 13, 8, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (261, 13, 9, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (262, 13, 10, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (263, 13, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (264, 13, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (265, 13, 12, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (266, 13, 13, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (267, 13, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (268, 13, 15, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (269, 13, 16, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (270, 13, 17, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (271, 13, 18, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (272, 13, 19, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (273, 13, 20, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (274, 13, 21, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (275, 13, 22, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (276, 13, 23, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (277, 13, 24, 'It was too brief session for people who have absolutely no hands on practice on computer.\r\n\r\n', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (278, 13, 25, 'It would be a good idea if this was a little longer session allowing more time to digest on.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (279, 13, 26, 'Practice session after the first Windows XP session and a review period.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (280, 13, 27, 'I would not like to repeat it if it is solidified the first time! That could be individual case or not.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (281, 14, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (282, 14, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (283, 14, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (284, 14, 4, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (285, 14, 5, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (286, 14, 6, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (287, 14, 7, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (288, 14, 8, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (289, 14, 9, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (290, 14, 10, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (291, 14, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (292, 14, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (293, 14, 12, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (294, 14, 13, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (295, 14, 14, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (296, 14, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (297, 14, 16, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (298, 14, 17, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (299, 14, 18, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (300, 14, 19, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (301, 14, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (302, 14, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (303, 14, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (304, 14, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (305, 14, 24, 'This course is very helpful for the first time computer user', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (306, 14, 25, 'I think we need more classes', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (307, 14, 26, 'I would like to join an Internet courses from  CRC offer', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (308, 14, 27, ' THANK YOU', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (309, 15, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (310, 15, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (311, 15, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (312, 15, 4, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (313, 15, 5, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (314, 15, 6, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (315, 15, 7, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (316, 15, 8, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (317, 15, 9, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (318, 15, 10, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (319, 15, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (320, 15, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (321, 15, 12, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (322, 15, 13, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (323, 15, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (324, 15, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (325, 15, 16, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (326, 15, 17, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (327, 15, 18, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (328, 15, 19, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (329, 15, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (330, 15, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (331, 15, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (332, 15, 23, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (333, 15, 24, 'very well taught', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (334, 15, 25, 'maybe give us more scripts to practice', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (335, 15, 26, '-', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (336, 15, 27, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (337, 16, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (338, 16, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (339, 16, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (340, 16, 4, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (341, 16, 5, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (342, 16, 6, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (343, 16, 7, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (344, 16, 8, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (345, 16, 9, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (346, 16, 10, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (347, 16, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (348, 16, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (349, 16, 12, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (350, 16, 13, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (351, 16, 14, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (352, 16, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (353, 16, 16, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (354, 16, 17, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (355, 16, 18, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (356, 16, 19, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (357, 16, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (358, 16, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (359, 16, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (360, 16, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (361, 16, 24, 'Shaffin was very helpful and I was very comfortable asking him any questions', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (362, 16, 25, 'none', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (363, 16, 26, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (364, 16, 27, 'when classes are cancelled, someone should phone atleast one hour before so we dont have to come all the way', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (365, 17, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (366, 17, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (367, 17, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (368, 17, 4, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (369, 17, 5, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (370, 17, 6, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (371, 17, 7, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (372, 17, 8, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (373, 17, 9, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (374, 17, 10, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (375, 17, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (376, 17, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (377, 17, 12, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (378, 17, 13, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (379, 17, 14, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (380, 17, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (381, 17, 16, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (382, 17, 17, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (383, 17, 18, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (384, 17, 19, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (385, 17, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (386, 17, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (387, 17, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (388, 17, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (389, 17, 24, 'It introduced basic knowledge about different subjects.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (390, 17, 25, 'nil', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (391, 17, 26, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (392, 17, 27, '0', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (393, 18, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (394, 18, 2, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (395, 18, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (396, 18, 4, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (397, 18, 5, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (398, 18, 6, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (399, 18, 7, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (400, 18, 8, '2', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (401, 18, 9, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (402, 18, 10, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (403, 18, 11, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (404, 18, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (405, 18, 12, '2', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (406, 18, 13, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (407, 18, 14, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (408, 18, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (409, 18, 16, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (410, 18, 17, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (411, 18, 18, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (412, 18, 19, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (413, 18, 20, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (414, 18, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (415, 18, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (416, 18, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (417, 18, 24, 'It was well presented.', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (418, 18, 25, 'practical session ', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (419, 18, 26, 'More refresher sessions in order to go back should you need to', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (420, 18, 27, 'I am happy  I took this course', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (421, 19, 1, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (422, 19, 2, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (423, 19, 3, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (424, 19, 4, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (425, 19, 5, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (426, 19, 6, '3', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (427, 19, 7, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (428, 19, 8, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (429, 19, 9, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (430, 19, 10, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (431, 19, 11, '1', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (432, 19, 28, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (433, 19, 12, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (434, 19, 13, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (435, 19, 14, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (436, 19, 15, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (437, 19, 16, '4', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (438, 19, 17, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (439, 19, 18, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (440, 19, 19, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (441, 19, 20, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (442, 19, 21, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (443, 19, 22, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (444, 19, 23, '5', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (445, 19, 24, 'Knowladgeble', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (446, 19, 25, 'More prectical work', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (447, 19, 26, 'Right now none', 0, '');
INSERT INTO `crc_feedback_answers` (`feedback_answers_id`, `feedback_answers_feedback_id`, `feedback_answers_questions_id`, `feedback_answers_answer`, `feedback_answers_active`, `feedback_answers_comments`) VALUES (448, 19, 27, '0', 0, '');

# --------------------------------------------------------

#
# Table structure for table `crc_feedback_questions`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Sep 11, 2003 at 08:51 PM
#

DROP TABLE IF EXISTS `crc_feedback_questions`;
CREATE TABLE `crc_feedback_questions` (
  `feedback_questions_id` int(11) NOT NULL auto_increment,
  `feedback_questions_question` text NOT NULL,
  `feedback_questions_active` tinyint(1) NOT NULL default '0',
  `feedback_questions_type` varchar(100) NOT NULL default 'COMMENT',
  `feedback_questions_category` varchar(100) NOT NULL default 'COMMENTS',
  `feedback_questions_sequence` int(11) NOT NULL default '0',
  PRIMARY KEY  (`feedback_questions_id`),
  KEY `SEQUENCE` (`feedback_questions_sequence`)
) TYPE=MyISAM AUTO_INCREMENT=29 ;

#
# Dumping data for table `crc_feedback_questions`
#

INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (1, 'I feel that I have gained new skills and knowledge.', 0, 'OPTION', 'GENERAL', 1);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (2, 'I will recommend the course to other member(s).', 0, 'OPTION', 'GENERAL', 2);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (3, 'I believe the skills that I have learned will help.', 0, 'OPTION', 'GENERAL', 3);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (4, 'The course material was easy to read.', 0, 'OPTION', 'GENERAL', 4);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (5, 'I will be able to use the course materials as a reference.', 0, 'OPTION', 'GENERAL', 5);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (6, 'I felt totally comfortable during the course.', 0, 'OPTION', 'GENERAL', 6);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (7, 'The lesson time frame was appropriate for the course.', 0, 'OPTION', 'GENERAL', 7);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (8, 'I think that the course was worth the money I spent for the course fee.', 0, 'OPTION', 'GENERAL', 8);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (9, 'My expectations for the course were met.', 0, 'OPTION', 'GENERAL', 9);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (10, 'The registration and interaction experience with administration members was a positive one.', 0, 'OPTION', 'GENERAL', 10);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (11, 'I would use the new online registration system to register for a course in the future.', 0, 'OPTION', 'GENERAL', 11);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (12, 'I understood the course objectives clearly.', 0, 'OPTION', 'OBJECTIVE', 13);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (13, 'I did achieve the course objectives.', 0, 'OPTION', 'OBJECTIVE', 14);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (14, 'The topics presented in the course were relevant to my work.', 0, 'OPTION', 'OBJECTIVE', 15);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (15, 'The course was structured in a logical way.', 0, 'OPTION', 'OBJECTIVE', 16);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (16, 'The course was easy to follow.', 0, 'OPTION', 'OBJECTIVE', 17);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (17, 'The course was interesting and enjoyable.', 0, 'OPTION', 'OBJECTIVE', 18);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (18, 'The concepts and techniques used were explained clearly.', 0, 'OPTION', 'PRESENTATION', 19);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (19, 'I was encouraged to actively participate during the course.', 0, 'OPTION', 'PRESENTATION', 20);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (20, 'My individual questions/problems discussed were satisfactorily answered.', 0, 'OPTION', 'PRESENTATION', 21);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (21, 'The presentation style of the instructor was satisfactory.', 0, 'OPTION', 'PRESENTATION', 22);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (22, 'The instructor\'s knowledge of the subject was satisfactory.', 0, 'OPTION', 'PRESENTATION', 23);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (23, 'The course was well paced.', 0, 'OPTION', 'PRESENTATION', 24);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (24, 'Please comment on what you liked about the course.', 0, 'COMMENT', 'COMMENTS', 25);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (25, 'What improvements would you suggest for this course.', 0, 'COMMENT', 'COMMENTS', 26);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (26, 'What other courses would you like to see the CRC offer.', 0, 'COMMENT', 'COMMENTS', 27);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (27, 'Please provide any additional comments not covered.', 0, 'COMMENT', 'COMMENTS', 28);
INSERT INTO `crc_feedback_questions` (`feedback_questions_id`, `feedback_questions_question`, `feedback_questions_active`, `feedback_questions_type`, `feedback_questions_category`, `feedback_questions_sequence`) VALUES (28, 'I would like to receive periodical emails regarding CRC course offerings and events.', 0, 'OPTION', 'GENERAL', 12);

# --------------------------------------------------------

#
# Table structure for table `crc_profiles`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Nov 29, 2003 at 07:54 PM
#

DROP TABLE IF EXISTS `crc_profiles`;
CREATE TABLE `crc_profiles` (
  `profile_id` int(11) NOT NULL auto_increment,
  `profile_uid` varchar(200) NOT NULL default '',
  `profile_pwd` varchar(15) NOT NULL default '',
  `profile_firstname` varchar(100) NOT NULL default '',
  `profile_lastname` varchar(100) NOT NULL default '',
  `profile_email` varchar(200) NOT NULL default '',
  `profile_dob` date NOT NULL default '2000-00-00',
  `profile_gender` varchar(6) NOT NULL default '',
  `profile_employed` tinyint(1) default '0',
  `profile_employed_title` varchar(100) default '',
  `profile_employed_company` varchar(100) default '',
  `profile_address_one` varchar(100) default '',
  `profile_address_two` varchar(100) default '',
  `profile_city` varchar(100) default '',
  `profile_province_state` varchar(100) default '',
  `profile_postal_code` varchar(100) default '',
  `profile_country` varchar(100) default '',
  `profile_phone_land` varchar(10) default '4160000000',
  `profile_phone_cell` varchar(10) default '4160000000',
  `profile_phone_fax` varchar(10) default '4160000000',
  `profile_role_id` int(11) NOT NULL default '0',
  `profile_active` tinyint(1) NOT NULL default '0',
  `profile_rdn` varchar(255) default '',
  `profile_date` timestamp(14) NOT NULL,
  PRIMARY KEY  (`profile_id`,`profile_uid`,`profile_email`)
) TYPE=MyISAM AUTO_INCREMENT=24 ;

#
# Dumping data for table `crc_profiles`
#

INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (1, 'shaffin_bhanji@yahoo.ca', 'shaffin', 'Shaffin', 'Bhanji', 'shaffin_bhanji@yahoo.ca', '1974-02-14', 'M', 0, '', '', '1 ELSON STREET', '', 'Markhville', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 1, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030808171621);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (2, 'student2@domain.com', 'student', 'student2', 'surname', 'student2@domain.com', '0000-00-00', 'F', 0, '', '', '10 GATEWAY BLVD.', 'SUITE 306', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030717194730);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (3, 'student3@domain.com', 'student', 'student3', 'surname', 'student3@domain.com', '1111-11-11', 'F', 0, '', '', '95 THORNCLIFFE PARK DR.', 'APT# 4403', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030730230338);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (4, 'student4@domain.com', 'student', 'student4', 'surname', 'student4@domain.com', '1111-11-11', 'M', 0, '', '', '65 THORNCLIFFE PARK DR.', 'APT.# 618', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031003183816);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (5, 'student5@domain.com', 'student', 'student5', 'surname', 'student5@domain.com', '1111-11-11', 'F', 0, '', '', '802-48 GRENIBLE DR.', '', 'North york', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030730232112);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (6, 'student6@domain.com', 'student', 'student6', 'surname', 'student6@domain.com', '1111-11-11', 'MALE', 0, '', '', '150 LEEWARD GLENWARD', 'APT.# 201', 'TORONTO', 'ON', 'A0A0A0', 'CANADA', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030730232952);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (7, 'student7@domain.com', 'student', 'student7', 'surname', 'student7@domain.com', '1111-11-11', 'F', 0, '', '', '150 LEEWARD GLENWAY', 'APT.# 201', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030730235014);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (8, 'student8@domain.com', 'student', 'student8', 'surname', 'student8@domain.com', '1111-11-11', 'F', 0, '', '', '16 ROCHE FORT DR.', '', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030731000047);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (9, 'student9@domain.com', 'student', 'student9', 'surname', 'student9@domain.com', '1111-11-11', 'F', 0, '', '', '24 PURVIS CRES.', '', 'Scarborough', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030731001026);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (10, 'student10@domain.com', 'student', 'student10', 'surname', 'student10@domain.com', '1111-11-11', 'M', 0, '', '', '206,155 LEEWARD GLENWAY', 'TORONTO', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030731173714);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (11, 'student11@domain.com', 'student', 'student11', 'surname', 'student11@domain.com', '1111-11-11', 'M', 0, '', '', '#2206, 100 LEEWARD GLENWAY', '', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 2, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030801175513);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (13, 'student12@domain.com', 'student', 'student12', 'surname', 'student12@domain.com', '1111-11-11', 'F', 0, '', '', '1 MASSEY SQUARE', 'APT# 2103', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030821203712);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (14, 'student13@domain.com', 'student', 'student13', 'surname', 'student13@domain.com', '1111-11-11', 'F', 0, '', '', '701 DON MILLS ROAD', 'APT# 1508', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030822204243);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (15, 'student14@domain.com', 'student', 'student14', 'surname', 'student14@domain.com', '1111-11-11', 'M', 0, '', '', '100 ROWENA DRIVE', 'APT # 818', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030905210535);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (16, 'student15@domain.com', 'student', 'student15', 'surname', 'student15@domain.com', '1111-11-11', 'M', 0, '', '', '14 MORRISON CRESCENT', '', 'Markham', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20030908202011);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (17, 'student16@domain.com', 'student', 'student16', 'surname', 'student16@domain.com', '0000-00-00', 'MALE', 0, '', '', '85 THORONCLIFF PARK DR.', 'APT. 812', 'TORONTO', 'ON', 'A0A0A0', 'CANADA', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031105222302);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (18, 'student17@domain.com', 'student', 'student17', 'surname', 'student17@domain.com', '1111-11-11', 'FEMALE', 0, '', '', '80 SUFI CRESCENT', '', 'TORONTO', 'ON', 'A0A0A0', 'CANADA', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031105222129);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (19, 'student18@domain.com', 'student', 'student18', 'surname', 'student18@domain.com', '1111-11-11', 'FEMALE', 0, '', '', '29 IANGROVE TERRACE', '', 'SCARBOROUGH', 'ON', 'A0A0A0', 'CANADA', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031105222117);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (20, 'student19@domain.com', 'student', 'student19', 'surname', 'student19@domain.com', '0000-00-00', 'FEMALE', 0, '', '', '16 HEASLIP TERRACE', '', 'SCARBOROUGH', 'ON', 'A0A0A0', 'CANADA', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031105222136);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (21, 'student20@domain.com', 'student', 'student20', 'surname', 'student20@domain.com', '1111-11-11', 'F', 0, '', '', '3300 DON MILLS ROAD', 'APT# 906', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031003191810);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (22, 'student21@domain.com', 'student', 'student21', 'surname', 'student21@domain.com', '1111-11-11', 'M', 0, '', '', '79 THORNCLIFFE PARK DR.', '', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 3, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031012201716);
INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`, `profile_date`) VALUES (23, 'student22@domain.com', 'student', 'student22', 'surname', 'student22@domain.com', '1111-11-11', 'M', 0, '', '', '28 DUTCH MYRTLEWAY', '', 'Toronto', 'ON', 'A0A0A0', 'Canada', '4160000000', '4160000000', '4160000000', 2, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world', 20031129195430);

# --------------------------------------------------------

#
# Table structure for table `crc_roles`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Aug 15, 2003 at 08:00 PM
#

DROP TABLE IF EXISTS `crc_roles`;
CREATE TABLE `crc_roles` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_name` varchar(100) NOT NULL default '',
  `role_desc` varchar(255) NOT NULL default '',
  `role_active` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`role_id`,`role_name`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

#
# Dumping data for table `crc_roles`
#

INSERT INTO `crc_roles` (`role_id`, `role_name`, `role_desc`, `role_active`) VALUES (1, 'Administartor', 'CRC Administrator role', 1);
INSERT INTO `crc_roles` (`role_id`, `role_name`, `role_desc`, `role_active`) VALUES (2, 'Teacher', 'CRC Teacher role', 1);
INSERT INTO `crc_roles` (`role_id`, `role_name`, `role_desc`, `role_active`) VALUES (3, 'Student', 'CRC Student role', 1);

# --------------------------------------------------------

#
# Table structure for table `crc_rooms`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Aug 15, 2003 at 08:00 PM
#

DROP TABLE IF EXISTS `crc_rooms`;
CREATE TABLE `crc_rooms` (
  `room_id` int(11) NOT NULL auto_increment,
  `room_name` varchar(100) NOT NULL default '',
  `room_desc` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`room_id`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

#
# Dumping data for table `crc_rooms`
#

INSERT INTO `crc_rooms` (`room_id`, `room_name`, `room_desc`) VALUES (1, 'TALIM', '');
INSERT INTO `crc_rooms` (`room_id`, `room_name`, `room_desc`) VALUES (2, 'IRSHAD', '');

# --------------------------------------------------------

#
# Table structure for table `crc_schedule`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Nov 05, 2003 at 08:04 PM
#

DROP TABLE IF EXISTS `crc_schedule`;
CREATE TABLE `crc_schedule` (
  `schedule_id` int(11) NOT NULL auto_increment,
  `schedule_course_id` int(11) NOT NULL default '0',
  `schedule_start_date` date NOT NULL default '0000-00-00',
  `schedule_end_date` date NOT NULL default '0000-00-00',
  `schedule_day_time` varchar(30) NOT NULL default 'M,W [8:30PM - 10:00PM]',
  `schedule_status` varchar(100) NOT NULL default 'Tentative',
  `schedule_room_id` int(11) NOT NULL default '2',
  `schedule_active` tinyint(1) NOT NULL default '0',
  `schedule_venue_id` int(11) NOT NULL default '1',
  PRIMARY KEY  (`schedule_id`)
) TYPE=MyISAM AUTO_INCREMENT=15 ;

#
# Dumping data for table `crc_schedule`
#

INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (1, 2, '2003-06-16', '2003-06-25', 'M,W [8:30PM-10:00PM]', 'Complete', 2, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (2, 1, '2003-06-30', '2003-07-23', 'M,W [8:30PM-10:00PM]', 'Complete', 2, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (3, 5, '2003-06-16', '2003-07-09', 'M,W [8:30PM-10:00PM]', 'No Participation', 1, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (4, 3, '2003-06-17', '2003-07-10', 'T,Th [8:30PM-10:00PM]', 'No Participation', 1, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (5, 12, '2003-06-21', '2003-07-12', 'S [9:30AM - 12:00PM]', 'No Participation', 2, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (6, 8, '2003-07-26', '2003-09-20', 'S [9:30AM - 12:00PM]', 'No Participation', 2, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (7, 6, '2003-09-27', '2003-11-15', 'S [9:30AM - 12:00PM]', 'No Participation', 2, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (8, 10, '2003-06-21', '2003-08-16', 'S [9:30AM - 12:00PM]', 'No Participation', 1, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (9, 9, '2003-08-23', '2003-10-11', 'S [9:30AM - 12:00PM]', 'No Participation', 1, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (10, 2, '2003-09-08', '2003-09-17', 'M,W [8:30PM - 10:00PM]', 'Complete', 2, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (11, 1, '2003-10-06', '2003-10-29', 'M,W [8:30PM - 10:00PM]', 'In Progress', 2, 0, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (12, 5, '2003-09-22', '2003-10-15', 'M,W [8:30PM - 10:00PM]', 'No Participation', 1, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (13, 4, '2003-09-23', '0000-00-00', 'T,Th [8:30PM - 10:00PM]', 'No Participation', 2, -1, 1);
INSERT INTO `crc_schedule` (`schedule_id`, `schedule_course_id`, `schedule_start_date`, `schedule_end_date`, `schedule_day_time`, `schedule_status`, `schedule_room_id`, `schedule_active`, `schedule_venue_id`) VALUES (14, 12, '2003-09-13', '2003-09-27', 'Sat [9:30PM - 12:00PM]', 'No Participation', 2, -1, 1);

# --------------------------------------------------------

#
# Table structure for table `crc_sessions`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Dec 11, 2004 at 08:07 PM
#

DROP TABLE IF EXISTS `crc_sessions`;
CREATE TABLE `crc_sessions` (
  `session_oid` int(11) NOT NULL auto_increment,
  `session_id` varchar(255) NOT NULL default '',
  `session_uid` varchar(15) NOT NULL default '',
  `session_pwd` varchar(15) NOT NULL default '',
  `session_dn` varchar(255) NOT NULL default '',
  `session_time` timestamp(14) NOT NULL,
  PRIMARY KEY  (`session_oid`)
) TYPE=MyISAM AUTO_INCREMENT=460 ;

# --------------------------------------------------------

#
# Table structure for table `crc_states`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Aug 15, 2003 at 08:00 PM
#

DROP TABLE IF EXISTS `crc_states`;
CREATE TABLE `crc_states` (
  `state_id` int(11) NOT NULL auto_increment,
  `state_name` varchar(50) NOT NULL default '',
  `state_desc` text NOT NULL,
  PRIMARY KEY  (`state_id`)
) TYPE=MyISAM AUTO_INCREMENT=6 ;

#
# Dumping data for table `crc_states`
#

INSERT INTO `crc_states` (`state_id`, `state_name`, `state_desc`) VALUES (1, 'Tentative', '');
INSERT INTO `crc_states` (`state_id`, `state_name`, `state_desc`) VALUES (2, 'In Progress', '');
INSERT INTO `crc_states` (`state_id`, `state_name`, `state_desc`) VALUES (3, 'Cancelled', '');
INSERT INTO `crc_states` (`state_id`, `state_name`, `state_desc`) VALUES (4, 'No Participation', '');
INSERT INTO `crc_states` (`state_id`, `state_name`, `state_desc`) VALUES (5, 'Completed', '');

# --------------------------------------------------------

#
# Table structure for table `crc_student_schedule`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Nov 05, 2003 at 10:21 PM
#

DROP TABLE IF EXISTS `crc_student_schedule`;
CREATE TABLE `crc_student_schedule` (
  `student_schedule_id` int(11) NOT NULL auto_increment,
  `student_schedule_profile_id` int(11) NOT NULL default '0',
  `student_schedule_schedule_id` int(11) NOT NULL default '0',
  `student_schedule_paid` char(1) NOT NULL default 'U',
  `student_schedule_amount` int(11) NOT NULL default '0',
  `student_schedule_questions` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`student_schedule_id`)
) TYPE=MyISAM AUTO_INCREMENT=37 ;

#
# Dumping data for table `crc_student_schedule`
#

INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (2, 2, 2, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (3, 4, 2, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (4, 9, 2, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (5, 8, 2, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (6, 7, 2, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (7, 6, 2, 'P', 0, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (8, 6, 1, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (9, 7, 1, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (10, 8, 1, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (11, 9, 1, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (12, 5, 1, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (13, 4, 1, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (14, 3, 1, 'P', 0, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (26, 4, 13, 'U', 0, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (22, 13, 10, 'E', 0, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (23, 13, 11, 'E', 0, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (24, 14, 10, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (25, 14, 11, 'U', 0, 1);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (28, 15, 10, 'U', 0, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (29, 17, 10, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (30, 16, 10, 'P', 40, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (32, 17, 11, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (33, 18, 11, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (34, 19, 11, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (35, 20, 11, 'P', 140, 0);
INSERT INTO `crc_student_schedule` (`student_schedule_id`, `student_schedule_profile_id`, `student_schedule_schedule_id`, `student_schedule_paid`, `student_schedule_amount`, `student_schedule_questions`) VALUES (36, 21, 11, 'O', 60, 1);

# --------------------------------------------------------

#
# Table structure for table `crc_teacher_schedule`
#
# Creation: Sep 11, 2003 at 08:29 PM
# Last update: Nov 05, 2003 at 07:50 PM
#

DROP TABLE IF EXISTS `crc_teacher_schedule`;
CREATE TABLE `crc_teacher_schedule` (
  `teacher_schedule_id` int(11) NOT NULL auto_increment,
  `teacher_schedule_profile_id` int(11) NOT NULL default '0',
  `teacher_schedule_schedule_id` int(11) NOT NULL default '0',
  `teacher_schedule_evaluation` int(11) NOT NULL default '0',
  PRIMARY KEY  (`teacher_schedule_id`)
) TYPE=MyISAM AUTO_INCREMENT=8 ;

#
# Dumping data for table `crc_teacher_schedule`
#

INSERT INTO `crc_teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_profile_id`, `teacher_schedule_schedule_id`, `teacher_schedule_evaluation`) VALUES (1, 1, 1, 0);
INSERT INTO `crc_teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_profile_id`, `teacher_schedule_schedule_id`, `teacher_schedule_evaluation`) VALUES (2, 1, 2, 1);
INSERT INTO `crc_teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_profile_id`, `teacher_schedule_schedule_id`, `teacher_schedule_evaluation`) VALUES (3, 1, 10, 1);
INSERT INTO `crc_teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_profile_id`, `teacher_schedule_schedule_id`, `teacher_schedule_evaluation`) VALUES (4, 1, 11, 1);
INSERT INTO `crc_teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_profile_id`, `teacher_schedule_schedule_id`, `teacher_schedule_evaluation`) VALUES (5, 1, 12, 0);
INSERT INTO `crc_teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_profile_id`, `teacher_schedule_schedule_id`, `teacher_schedule_evaluation`) VALUES (6, 1, 13, 0);
INSERT INTO `crc_teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_profile_id`, `teacher_schedule_schedule_id`, `teacher_schedule_evaluation`) VALUES (7, 1, 14, 0);

# --------------------------------------------------------

#
# Table structure for table `crc_venue`
#
# Creation: Aug 15, 2003 at 08:00 PM
# Last update: Aug 15, 2003 at 08:00 PM
#

DROP TABLE IF EXISTS `crc_venue`;
CREATE TABLE `crc_venue` (
  `venue_id` int(11) NOT NULL auto_increment,
  `venue_name` varchar(100) NOT NULL default '',
  `venue_desc` varchar(100) NOT NULL default '',
  `venue_shortname` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`venue_id`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

#
# Dumping data for table `crc_venue`
#

INSERT INTO `crc_venue` (`venue_id`, `venue_name`, `venue_desc`, `venue_shortname`) VALUES (1, 'CRC', '', 'Eglinton Branch');
