<?php
	// Include the CRC Object class that needs to
	// extended by all classes. This is the super
	// class.
	include_once('crc_constants.mod.php');
	include_once('crc_object.cls.php');
	include_once('crc_mysql.cls.php');

	//******************************************
	// Name: crc_schedule
	//******************************************
	//
	// Desc: The primary CRC Object
	// Developer: Shaffin Bhanji
	// Email: shaffin_bhanji@hotmail.com
	// Date: March 10th, 2003
	// Version: 1.0.0
	//
	// Copyright
	// =========
	// This code is copyright, use in part or
	// whole is prohibited without a written
	// concent to the developer.
	//******************************************

	class crc_courses extends crc_object {

		var $m_sql;
		var $m_data;


		function crc_courses($debug) {
			//******************************************
			// Initialization by constructor
			//******************************************
			$this->classname = 'crc_courses';
			$this->classdescription = 'Courses resitered by student.';
			$this->classversion = '1.0.0';
			$this->classdate = 'March 10th, 2003';
			$this->classdevelopername = 'Shaffin Bhanji';
			$this->classdeveloperemail = 'shaffin_bhanji@hotmail.com';
			$this->_DEBUG = $debug;
			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo "DEBUG {crc_courses::constructor}: The class \"crc_courses\" was successfuly created. <br>";
				echo "DEBUG {crc_courses::constructor}: Running in debug mode. <br>";
				echo '</font>';
			}
		}

		function fn_getcourses($profileid) {
			//******************************************
			// Get all the courses the student has enrolled in 
			//******************************************
			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				if ($this->_DEBUG) {
					echo "DEBUG {crc_courses::fn_getcourses}: Retreiving all the courses. <br>";
				}
				$this->m_sql = 'select course_name, schedule_start_date, ' .
														'schedule_end_date, schedule_day_time, course_fee, ' .
														'schedule_status, schedule_id, schedule_room_id, room_name, venue_shortname ' .
												'from ' . MYSQL_SCHEDULE_TBL . ' as s, ' . MYSQL_COURSES_TBL . ' as c, ' . 
														MYSQL_ROOMS_TBL . ' as r, ' . MYSQL_VENUE_TBL . ' as v ' .
												'where (s.schedule_course_id=c.course_id) and ' .
														'(s.schedule_room_id=r.room_id) and ' .
														'(s.schedule_venue_id=v.venue_id) ' .
												'order by v.venue_shortname, r.room_name, c.course_name asc';

				$result = $db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_num_rows($result) > 0) {
					$index = 0;
					while ($row = mysql_fetch_array($result)) {

						if ($this->_DEBUG) {
							echo "DEBUG {crc_courses::fn_getcourses}: Checking to see if profile id: " . $profileid . " enrolled into a course scheduled under schedule id: " . $row[6] . ". <br>";
						}
						$this->m_sql = 'select * from ' . MYSQL_STUDENT_SCHEDULE_TBL . ', ' . MYSQL_SCHEDULE_TBL . 
														' where student_schedule_schedule_id = ' . $row[6] . ' and student_schedule_profile_id = ' . $profileid;

						$enrol = $db->fn_runsql(MYSQL_DB, $this->m_sql);
						if (mysql_num_rows($enrol) > 0) {
							$this->m_data[$index] = $row;
							$question = mysql_fetch_array($enrol);
							$this->m_data[$index][10] = $question[0];
							$this->m_data[$index][11] = $question[5];
							$index = $index + 1;
						}
						$db->fn_freesql($enrol);
					}
				}
				$db->fn_freesql($result);
				$db->fn_disconnect($dbhandle);
				return $this->m_data;
			} else {
				$this->lasterrnum = $db->m_lasterrnum;
				$this->lasterrmsg = $db->m_lasterrmsg;
				$db->fn_disconnect($dbhandle);
				return null;
			}
		}


		function fn_removecourse($profileid, $courseid) {
			//******************************************
			// Remove a course enrollment
			//******************************************
			$result = false;

			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				if ($this->_DEBUG) {
					echo "DEBUG {crc_courses::fn_removecourses}: Removing course id: " . $courseid . " from student schedule. Profile id: " . $profileid . ".<br>";
				}
				if ($profileid > 0) {
					$this->m_sql = 'delete from ' . MYSQL_STUDENT_SCHEDULE_TBL . 
													' where (student_schedule_profile_id = ' . $profileid . ' and student_schedule_schedule_id = ' . $courseid . ')';

					$db->fn_runsql(MYSQL_DB, $this->m_sql);
					if (mysql_affected_rows() > 0) {
						$result = true;
					} else {
						if ($this->_DEBUG) {
							echo "DEBUG {crc_courses::fn_removecourses}: Could not remove course id: " . $courseid . " from student schedule.<br>";
						}
					}
				}
				$db->fn_disconnect($dbhandle);
				return $result;
			} else {
				$this->lasterrnum = $db->m_lasterrnum;
				$this->lasterrmsg = $db->m_lasterrmsg;
				return $result;
			}
		}
	}
?>


<!--
	Write the test case here
	
?php
	$courses = new crc_courses(True);
	$courses->fn_getcourses(8);
	//$courses->fn_removecourse(8,9);

?
-->

	
