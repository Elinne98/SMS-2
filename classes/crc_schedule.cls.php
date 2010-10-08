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

	class crc_schedule extends crc_object {

		var $m_sql;
		var $m_data;
		
		function crc_schedule($debug) {
			//******************************************
			// Initialization by constructor
			//******************************************
			$this->classname = 'crc_schedule';
			$this->classdescription = 'Provide course schedule.';
			$this->classversion = '1.0.0';
			$this->classdate = 'March 10th, 2003';
			$this->classdevelopername = 'Shaffin Bhanji';
			$this->classdeveloperemail = 'shaffin_bhanji@hotmail.com';
			$this->_DEBUG = $debug;

			if ($this->_DEBUG) {
				echo "DEBUG {crc_schedule::constructor}: The class \"crc_schedule\" was successfuly created. <br>";
				echo "DEBUG {crc_schedule::constructor}: Running in debug mode. <br>";
			}
		}


		function fn_getschedule($profileid, $roleid) {
			//******************************************
			// Get the schedule for the classes
			//******************************************
			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				if ($this->_DEBUG) {
					echo "DEBUG {crc_schedule::fn_getschedule}: Retreiving the schedule. <br>";
				}

				$this->m_sql = 'select course_name, schedule_start_date, schedule_end_date, ' .
														'schedule_day_time, course_fee, schedule_status, ' . 
														'schedule_id, schedule_room_id, room_name, ' . 
														'venue_shortname ' .
												'from ' . MYSQL_SCHEDULE_TBL . ' as s, ' .
														MYSQL_COURSES_TBL . ' as c, ' .
														MYSQL_ROOMS_TBL . ' as r, ' .
														MYSQL_VENUE_TBL . ' as v ' .
												'where (s.schedule_course_id=c.course_id) and ' .
														'(s.schedule_active=0) and ' .
														'(s.schedule_room_id=r.room_id) and ' .
														'(s.schedule_venue_id=v.venue_id) ' .
												'order by v.venue_shortname, r.room_name, c.course_name asc';
				
				//echo $this->m_sql;
				//die;

				$resource = $db->fn_runsql(MYSQL_DB, $this->m_sql);

				if (mysql_num_rows($resource) > 0) {
					$index = 0;
					while ($row = mysql_fetch_array($resource)) {

						switch($roleid) {
						
							case 3:
								
								$this->m_sql = 'select * from ' . MYSQL_STUDENT_SCHEDULE_TBL . ', ' . 
																		MYSQL_SCHEDULE_TBL .  
																' where student_schedule_schedule_id = ' . $row[6] . 
																		' and student_schedule_profile_id = ' . $profileid;
								break;

							case 2:

								$this->m_sql = 'select * from ' . MYSQL_TEACHER_SCHEDULE_TBL . ', ' . 
																		MYSQL_SCHEDULE_TBL .  
																' where teacher_schedule_schedule_id = ' . $row[6] . 
																		' and teacher_schedule_profile_id = ' . $profileid;
								break;
								
							case 1:

								$this->m_sql = 'select * from ' . MYSQL_TEACHER_SCHEDULE_TBL . ', ' . 
																		MYSQL_SCHEDULE_TBL .  
																' where teacher_schedule_schedule_id = ' . $row[6] . 
																		' and teacher_schedule_profile_id = ' . $profileid;
								break;

						}
						
						$enrol = $db->fn_runsql(MYSQL_DB, $this->m_sql);
						if ($this->_DEBUG) {
							echo "DEBUG {crc_schedule::fn_getschedule}: Checking enrollment of schedule id " . $row[6] . " for profile id " . $profileid . ". <br>";
						}

						if (mysql_num_rows($enrol) == 0) {
							$this->m_data[$index] = $row;
							$index = $index + 1;
						}
						$db->fn_freesql($enrol);
					}
				}
				$db->fn_freesql($resource);
				$db->fn_disconnect();
				return $this->m_data;
			} else {
				$this->lasterrnum = $db->lasterrnum;
				$this->lasterrmsg = $db->lasterrmsg;
				$db->fn_disconnect();
				return null;
			}
		}

		function fn_addschedule($profileid, $scheduleid) {
			//******************************************
			// Add a scheduled course for a student
			//******************************************
			$result = false;
			
			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				if ($this->_DEBUG) {
					echo "DEBUG {crc_schedule::fn_addschedule}: Add a schedule id: " . $scheduleid . " to the profile id: " . $profileid . " added. <br>";
				}

				$this->m_sql = 'insert into ' . MYSQL_STUDENT_SCHEDULE_TBL . 
														' (student_schedule_schedule_id, ' .
														'student_schedule_profile_id) ' . 
												'values(' . $scheduleid . ',' . $profileid . ')';

				$db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_affected_rows() > 0) {
					$result = true;
				} else {
					if ($this->_DEBUG) {
						echo "ERROR {crc_schedule::fn_addschedule}: The schedule id: " . $scheduleid . " could not be added to the profile id: " . $profileid . " added. <br>";
					}
					$result = false;
				}
				$db->fn_disconnect();
				return $result;
			} else {
				$this->lasterrnum = $db->lasterrnum;
				$this->lasterrmsg = $db->lasterrmsg;
				$db->fn_disconnect();
				return $result;
			}
		}
	}
?>

<!--
?php
	$schedule = new crc_schedule(True);
	$schedule->fn_getschedule(6);
	//$schedule->fn_addschedule(11, 6);
	
?
-->
