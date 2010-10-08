DROP TABLE IF EXISTS `crc_attendance`;
CREATE TABLE `crc_attendance` (
  `attendance_id` int(11) NOT NULL auto_increment,
  `attendance_student_schedule_id` int(11) NOT NULL default '0',
  `attendance_date_id` int(11) NOT NULL default '0',
  `attendance_check` char(1) NOT NULL default 'A',
  PRIMARY KEY  (`attendance_id`)
) TYPE=MyISAM AUTO_INCREMENT=75 ;

DROP TABLE IF EXISTS `crc_courses`;
CREATE TABLE `crc_courses` (
  `course_id` int(11) NOT NULL auto_increment,
  `course_name` varchar(100) NOT NULL default '',
  `course_desc` varchar(255) default '',
  `course_active` tinyint(1) NOT NULL default '0',
  `course_fee` int(11) NOT NULL default '0',
  PRIMARY KEY  (`course_id`,`course_name`)
) TYPE=MyISAM AUTO_INCREMENT=13 ;

DROP TABLE IF EXISTS `crc_date`;
CREATE TABLE `crc_date` (
  `date_id` int(11) NOT NULL auto_increment,
  `date_day` char(2) NOT NULL default '',
  `date_month` char(2) NOT NULL default '',
  `date_year` varchar(4) NOT NULL default '',
  PRIMARY KEY  (`date_id`)
) TYPE=MyISAM AUTO_INCREMENT=14 ;

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

DROP TABLE IF EXISTS `crc_profiles`;
CREATE TABLE `crc_profiles` (
  `profile_id` int(11) NOT NULL auto_increment,
  `profile_uid` varchar(100) NOT NULL default '',
  `profile_pwd` varchar(40) NOT NULL default '',
  `profile_firstname` varchar(100) NOT NULL default '',
  `profile_lastname` varchar(100) NOT NULL default '',
  `profile_email` varchar(100) NOT NULL default '',
  `profile_dob` date NOT NULL default '2010-01-01',
  `profile_gender` varchar(6) NOT NULL default 'M',
  `profile_employed` tinyint(1) default '0',
  `profile_employed_title` varchar(100) default '',
  `profile_employed_company` varchar(100) default '',
  `profile_address_one` varchar(100) default '',
  `profile_address_two` varchar(100) default '',
  `profile_city` varchar(100) default '',
  `profile_province_state` varchar(100) default '',
  `profile_postal_code` varchar(100) default '',
  `profile_country` varchar(100) default '',
  `profile_phone_land` varchar(14) default '00400000000000',
  `profile_phone_cell` varchar(14) default '00400000000000',
  `profile_phone_fax` varchar(14) default '00400000000000',
  `profile_role_id` int(11) NOT NULL default '0',
  `profile_active` tinyint(1) NOT NULL default '0',
  `profile_rdn` varchar(100) default 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world',
  `profile_date` timestamp(14) NOT NULL,
  PRIMARY KEY  (`profile_id`,`profile_uid`,`profile_email`)
) TYPE=MyISAM AUTO_INCREMENT=24 ;

INSERT INTO `crc_profiles` (`profile_id`, `profile_uid`, `profile_pwd`, `profile_firstname`, `profile_lastname`, `profile_email`, `profile_dob`, `profile_gender`, `profile_employed`, `profile_employed_title`, `profile_employed_company`, `profile_address_one`, `profile_address_two`, `profile_city`, `profile_province_state`, `profile_postal_code`, `profile_country`, `profile_phone_land`, `profile_phone_cell`, `profile_phone_fax`, `profile_role_id`, `profile_active`, `profile_rdn`) VALUES (1, 'admin', SHA1('admin'), 'Firstname', 'Lastname', 'admin@domain.com', '1977-11-19', 'M', 0, '', '', 'Campulung', '', 'Campulung', 'AG', '115100', 'Romania', '00400000000000', '00400000000000', '00400000000000', 1, 0, 'ou=don mills,ou=toronto,ou=ontario,ou=canada,o=crc world');

DROP TABLE IF EXISTS `crc_roles`;
CREATE TABLE `crc_roles` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_name` varchar(100) NOT NULL default '',
  `role_desc` varchar(255) NOT NULL default '',
  `role_active` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`role_id`,`role_name`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

INSERT INTO `crc_roles` (`role_id`, `role_name`, `role_desc`, `role_active`) VALUES (1, 'Administrator', 'CRC Administrator role', 1);
INSERT INTO `crc_roles` (`role_id`, `role_name`, `role_desc`, `role_active`) VALUES (2, 'Teacher', 'CRC Teacher role', 1);
INSERT INTO `crc_roles` (`role_id`, `role_name`, `role_desc`, `role_active`) VALUES (3, 'Student', 'CRC Student role', 1);

DROP TABLE IF EXISTS `crc_rooms`;
CREATE TABLE `crc_rooms` (
  `room_id` int(11) NOT NULL auto_increment,
  `room_name` varchar(100) NOT NULL default '',
  `room_desc` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`room_id`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

DROP TABLE IF EXISTS `crc_schedule`;
CREATE TABLE `crc_schedule` (
  `schedule_id` int(11) NOT NULL auto_increment,
  `schedule_course_id` int(11) NOT NULL default '0',
  `schedule_start_date` date NOT NULL default '2010-01-01',
  `schedule_end_date` date NOT NULL default '2010-01-01',
  `schedule_day_time` varchar(30) NOT NULL default 'M,W [8:00PM - 10:00PM]',
  `schedule_status` varchar(100) NOT NULL default 'Tentative',
  `schedule_room_id` int(11) NOT NULL default '2',
  `schedule_active` tinyint(1) NOT NULL default '0',
  `schedule_venue_id` int(11) NOT NULL default '1',
  PRIMARY KEY  (`schedule_id`)
) TYPE=MyISAM AUTO_INCREMENT=15 ;

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

DROP TABLE IF EXISTS `crc_states`;
CREATE TABLE `crc_states` (
  `state_id` int(11) NOT NULL auto_increment,
  `state_name` varchar(50) NOT NULL default '',
  `state_desc` text NOT NULL,
  PRIMARY KEY  (`state_id`)
) TYPE=MyISAM AUTO_INCREMENT=6 ;

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

DROP TABLE IF EXISTS `crc_teacher_schedule`;
CREATE TABLE `crc_teacher_schedule` (
  `teacher_schedule_id` int(11) NOT NULL auto_increment,
  `teacher_schedule_profile_id` int(11) NOT NULL default '0',
  `teacher_schedule_schedule_id` int(11) NOT NULL default '0',
  `teacher_schedule_evaluation` int(11) NOT NULL default '0',
  PRIMARY KEY  (`teacher_schedule_id`)
) TYPE=MyISAM AUTO_INCREMENT=8 ;

DROP TABLE IF EXISTS `crc_venue`;
CREATE TABLE `crc_venue` (
  `venue_id` int(11) NOT NULL auto_increment,
  `venue_name` varchar(100) NOT NULL default '',
  `venue_desc` varchar(100) NOT NULL default '',
  `venue_shortname` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`venue_id`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;
