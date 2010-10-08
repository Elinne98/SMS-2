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

	class crc_teacher extends crc_object {

		var $m_sql;
		var $m_data;
		
		function crc_teacher($debug) {
			//******************************************
			// Initialization by constructor
			//******************************************
			$this->classname = 'crc_teacher';
			$this->classdescription = 'Provide course schedule.';
			$this->classversion = '1.0.0';
			$this->classdate = 'March 10th, 2003';
			$this->classdevelopername = 'Shaffin Bhanji';
			$this->classdeveloperemail = 'shaffin_bhanji@hotmail.com';
			$this->_DEBUG = $debug;

			if ($this->_DEBUG) {
				echo "DEBUG {crc_teacher::constructor}: The class \"crc_teacher\" was successfuly created. <br>";
				echo "DEBUG {crc_teacher::constructor}: Running in debug mode. <br>";
			}
		}


		function fn_setattendance($id, $action) {
			//******************************************
			// Set the attendance for a student
			//******************************************
			$result = false;
			
			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {
				if ($this->_DEBUG) {
					echo "DEBUG {crc_teacher::fn_setattendance}: Updating attendance id " . $id . " to " . ucwords($action) . ". <br>";
				}
				$this->m_sql = 'update crc_attendance set attendance_check = "' . ucwords($action) . '"
												where attendance_id = ' . $id;

				$db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_affected_rows() > 0) {
					$result = true;
				} else {
					$result = false;
				}
				$db->fn_disconnect($dbhandle);
				return $result;
			} else {
				$this->lasterrnum = $db->lasterrnum;
				$this->lasterrmsg = $db->lasterrmsg;
				$db->fn_disconnect($dbhandle);
				return null;
			}
		}


		function fn_getattendance($profileid, $scheduleid) {
			//******************************************
			// Get the attendance for all student(s)
			//******************************************
			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				if ($this->_DEBUG) {
					echo "DEBUG {crc_teacher::fn_getattendance}: Retreiving attendance for profile id " . $profileid . ". <br>";
				}

				$this->m_sql = 'select course_name, profile_firstname, profile_lastname, ' .
														'date_day, date_month, date_year, attendance_check, ' .
														'attendance_id, profile_id, schedule_id, schedule_status ' .
					       						'from ' . MYSQL_DATE_TBL . ' as d, ' . MYSQL_ATTENDANCE_TBL . ' as a, ' . 
														MYSQL_STUDENT_SCHEDULE_TBL . ' as s, ' . MYSQL_PROFILES_TBL . ' as p, ' .
														MYSQL_SCHEDULE_TBL . ' as sc, ' . MYSQL_COURSES_TBL . ' as c ' .
					       						'where a.attendance_date_id = d.date_id and ' .
														'a.attendance_student_schedule_id = s.student_schedule_id and ' .
														's.student_schedule_profile_id = p.profile_id and ' .
														's.student_schedule_schedule_id = sc.schedule_id and ' .
														'sc.schedule_course_id = c.course_id and ' .
														's.student_schedule_profile_id = ' . $profileid . ' and ' . 
														'sc.schedule_id = ' . $scheduleid . 
												' order by a.attendance_id asc';
				$result = $db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_num_rows($result) > 0) {
					$index = 0;
					while ($row = mysql_fetch_array($result)) {
						if ($this->_DEBUG) {
							echo "DEBUG {crc_teacher::fn_getattendance}: Found attendance id " . $row[0] . " for this profile. <br>";
						}
						$this->m_data[$index] = $row;
						$index = $index + 1;
					}
					$db->fn_freesql($result);
				}
				$db->fn_disconnect($dbhandle);
				return $this->m_data;
			} else {
				$this->lasterrnum = $db->m_lasterrnum;
				$this->lasterrmsg = $db->m_lasterrmsg;
				$db->fn_disconnect($dbhandle);
				return 0;
			}
		}


		function fn_getschedule($profileid) {
			//******************************************
			// Get the teachers schedule
			//******************************************
			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();

			if ($dbhandle != 0) {

				if ($this->_DEBUG) {
					echo "DEBUG {crc_teacher::fn_getschedule}: Retreiving the teachers schedule for profile id " . $profileid . ". <br>";
				}

				$this->m_sql = 'select schedule_id, course_name, schedule_start_date, ' .
														'schedule_end_date, schedule_day_time, profile_firstname, ' .
														'profile_lastname, schedule_room_id, schedule_status, ' .
														'profile_id, course_id, teacher_schedule_id ' .
												'from ' . MYSQL_SCHEDULE_TBL . ' as s, ' .
														MYSQL_COURSES_TBL . ' as c, ' .
														MYSQL_PROFILES_TBL . ' as p, ' .
														MYSQL_TEACHER_SCHEDULE_TBL . ' as t ' .
												'where s.schedule_course_id = c.course_id ' .
														'and t.teacher_schedule_schedule_id = s.schedule_id ' .
														'and t.teacher_schedule_profile_id = p.profile_id ' .
														'and t.teacher_schedule_profile_id = ' . $profileid . 
												' order by c.course_name';

				$result = $db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_num_rows($result) > 0) {
					$index = 0;
					while ($row = mysql_fetch_array($result)) {
						$this->m_data[$index] = $row;

						$this->m_sql = 'select count(*) as students from ' . MYSQL_STUDENT_SCHEDULE_TBL .
														' where student_schedule_schedule_id = ' . $row[0];

						$students = $db->fn_runsql(MYSQL_DB, $this->m_sql);
						$studentcount = mysql_fetch_array($students);
						$this->m_data[$index][9] = $studentcount[0];

						if ($this->_DEBUG) {
							echo "DEBUG {crc_teacher::fn_getschedule}: Teacher has been assigned schedule id " . $row[0] . " with " . $studentcount[0]  . " students. <br>";
						}

						$db->fn_freesql($students);
						$index = $index + 1;
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


		function fn_getstudents($scheduleid) {
			//******************************************
			// Get all student(s) for a course
			//******************************************
			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				if ($this->_DEBUG) {
					echo "DEBUG {crc_teacher::fn_getstudents}: Retreiving all the students for schedule id " . $scheduleid . ". <br>";
				}
				
				$this->m_sql = 'select schedule_id, course_name, profile_firstname, ' .
				       									'profile_lastname, profile_email, student_schedule_paid, profile_id ' .
												'from ' . MYSQL_SCHEDULE_TBL . ' as s, ' .
														MYSQL_COURSES_TBL . ' as c, ' .
														MYSQL_PROFILES_TBL . ' as p, ' .
														MYSQL_STUDENT_SCHEDULE_TBL . ' as t ' .
												'where s.schedule_course_id = c.course_id ' .
														'and t.student_schedule_schedule_id = s.schedule_id ' .
														'and t.student_schedule_profile_id = p.profile_id ' .
														'and t.student_schedule_schedule_id = ' . $scheduleid . 
												' order by c.course_name';

				$result = $db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_num_rows($result) > 0) {
					$index = 0;
					while ($row = mysql_fetch_array($result)) {
						$this->m_data[$index] = $row;
						$index = $index + 1;
					}
				}
				$db->fn_freesql($result);
				$db->fn_disconnect($dbhandle);
				return $this->m_data;
			} else {
				$this->lasterrnum = $db->lasterrnum;
				$this->lasterrmsg = $db->lasterrmsg;
				$db->fn_freesql($result);
				$db->fn_disconnect($dbhandle);
				return null;
			}
		}
	}
?>

<?php
	//$teacher = new crc_teacher(true);
	//$teacher->fn_setattendance(6, "P");
	//$teacher->fn_getattendance(11);
	//$teacher->fn_getschedule(11);
	//$teacher->fn_getstudents(7);
	
	
	
?>