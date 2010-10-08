<?php
	// Include the CRC Object class that needs to
	// extended by all classes. This is the super
	// class.
	include_once('crc_constants.mod.php');
	include_once('crc_object.cls.php');
	include_once('crc_mysql.cls.php');

	//******************************************
	// Name: crc_object
	//******************************************
	//
	// Desc: The Profile Object
	// Developer: Free SMS team
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

	class crc_profile extends crc_object {

		var $m_roleid;
		var $m_uid;
		var $m_pwd;
		var $m_email;
		var $m_rdn;
		var $m_fname;
		var $m_lname;
		var $m_dob;
		var $m_gender;
		var $m_emp;
		var $m_emptitle;
		var $m_empcomp;
		var $m_add1;
		var $m_add2;
		var $m_city;
		var $m_prov;
		var $m_country;
		var $m_code;
		var $m_phland;
		var $m_phcell;
		var $m_phfax;
		//var $m_roleid;
		var $m_active;
		var $m_sql;
		var $m_data;
		
		function crc_profile($debug) {
			//******************************************
			// Initialization by constructor
			//******************************************
			$this->classname = 'crc_profile';
			$this->classdescription = 'Handle user profile.';
			$this->classversion = '1.0.0';
			$this->classdate = 'March 10th, 2003';
			$this->classdevelopername = 'Shaffin Bhanji';
			$this->classdeveloperemail = 'shaffin_bhanji@hotmail.com';
			$this->_DEBUG = $debug;

			if ($this->_DEBUG) {
				echo "DEBUG {crc_profile::constructor}: The class \"crc_profile\" was successfuly created. <br>";
				echo "DEBUG {crc_profile::constructor}: Running in debug mode. <br>";
			}

		}


		function fn_getprofile($uid) {
			//******************************************
			// Get the users profile information
			//******************************************
			$result = false;
			
			if ($this->_DEBUG) {
				echo "DEBUG {crc_profile::fn_getprofile}: Retreiving the profile of uid: " . $uid . ". <br>";
			}

			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				$this->m_sql = 'select * ' . 
												'from ' . MYSQL_PROFILES_TBL . 
												' where (profile_uid = "' . $uid . '")';

				//echo $this->m_sql;
				$resource = $db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_num_rows($resource) > 0) {
					$this->m_data = mysql_fetch_array($resource);
				} else {
					$this->m_data = null;
					$this->lasterrnum = ERR_PROFILE_NOPROFILE_NUM;
					$this->lasterrmsg = ERR_PROFILE_NOPROFILE_DESC;
					if ($this->_DEBUG) {
						echo 'ERROR {crc_profile::fn_getprofile}: The sql command returned nothing. <br>';
						echo 'ERROR {crc_profile::fn_getprofile}: Error number: ' . $this->m_lasterrnum . '. <br>';
						echo 'ERROR {crc_profile::fn_getprofile}: Error description: ' . $this->m_lasterrmsg . '. <br>';
					}
				}
				$db->fn_freesql($resource);
				$db->fn_disconnect();
				return $this->m_data;
			} else {
				$db->fn_freesql($resource);
				$db->fn_disconnect();
				return null;
			}
		}

		function fn_getadminprofile() {
			//******************************************
			// Get the administrator profile information 
			//******************************************
			$result = false;
			
			if ($this->_DEBUG) {
				echo "DEBUG {crc_profile::fn_getadminprofile}: Retreiving the administrator profile. <br>";
			}

			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				$this->m_sql = 'select * ' . 
												'from ' . MYSQL_PROFILES_TBL . 
												' where (profile_role_id = "1")';

				//echo $this->m_sql;
				$resource = $db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_num_rows($resource) > 0) {
					$this->m_data = mysql_fetch_array($resource);
				} else {
					$this->m_data = null;
					$this->lasterrnum = ERR_PROFILE_NOPROFILE_NUM;
					$this->lasterrmsg = ERR_PROFILE_NOPROFILE_DESC;
					if ($this->_DEBUG) {
						echo 'ERROR {crc_profile::fn_getadminprofile}: The sql command returned nothing. <br>';
						echo 'ERROR {crc_profile::fn_getadminprofile}: Error number: ' . $this->m_lasterrnum . '. <br>';
						echo 'ERROR {crc_profile::fn_getadminprofile}: Error description: ' . $this->m_lasterrmsg . '. <br>';
					}
				}
				$db->fn_freesql($resource);
				$db->fn_disconnect();
				return $this->m_data;
			} else {
				$db->fn_freesql($resource);
				$db->fn_disconnect();
				return null;
			}
		}

		function fn_setprofile($post) {
			//******************************************
			// Update the users profile information
			//******************************************

			if ($this->_DEBUG) {
				echo "DEBUG {crc_profile::fn_updateprofile}: Updating the profile for \"" . $post['email'] . "\". <br>";
			}

			$db = new crc_mysql($this->_DEBUG);
			$dbhandle = $db->fn_connect();
			if ($dbhandle != 0) {

				$this->m_sql = 'update ' . MYSQL_PROFILES_TBL .
														' SET profile_uid="' . $post['username'] . '", profile_pwd=SHA1("' . strtolower($post['password']) . '"), ' .
														'profile_firstname="' . ucfirst($post['fname']) . '", profile_lastname="' . ucfirst($post['lname']) . '", ' .
														'profile_email="' . $post['email'] . '", profile_dob="' . $post['year'] . '-' . $post['month'] . '-' . $post['day'] . '", ' .
														'profile_gender="' . strtoupper($post['gender'][0]) . '", profile_address_one="' . $post['add1'] . '", ' .
														'profile_address_two="' . $post['add2'] . '", profile_city="' . $post['city'] . '", ' .
														'profile_province_state="' . strtoupper($post['province']) . '", profile_postal_code="' . strtoupper($post['pc']) . '", ' .
														'profile_country="' . ucfirst($post['country']) . '", profile_phone_land="' . $post['lcode'] . $post['lprefix'] . $post['lpostfix'] . '"' .
												' where (profile_id = ' . $post['profileid'] . ')';

				$resource = $db->fn_runsql(MYSQL_DB, $this->m_sql);
				if (mysql_errno() == 0) {
					$_SESSION['uid'] = $post['username'];
					$result = true;
				} else {
					$this->lasterrnum = ERR_PROFILE_UPDATE_NUM;
					$this->lasterrmsg = ERR_PROFILE_UPDATE_DESC;
					if ($this->_DEBUG) {
						echo 'ERROR {crc_profile::fn_setprofile}: Could not update profile information for ' . $post['profileid'] . '<br>';
						echo 'ERROR {crc_profile::fn_setprofile}: Error number: ' . $this->m_lasterrnum . '. <br>';
						echo 'ERROR {crc_profile::fn_setprofile}: Error description: ' . $this->m_lasterrmsg . '. <br>';
					}
					$result = false;
				}
				$db->fn_freesql($resource);
				$db->fn_disconnect();
			} else {
				$db->fn_disconnect();
			}
			return $result;
		}
	}
?>


<!--
?php 
	//This will test the get_profile function.
	$profile = new crc_profile(True);
	$data = $profile->fn_getprofile("shaffin");
	echo "Values returned: <br>";
	print_r(array_values($data));
?
-->


<!--
?php 
	//This will test the set_profile function.
	$profile = new crc_profile(True);
	$data['profileid'] = '6';
	$data['email'] = 'altaf';
	$data['password'] = 'altaf';
	$data['fname'] = 'altaf';
	$data['lname'] = 'bhanji';
	$data['year'] = '1969';
	$data['month'] = '03';
	$data['day'] = '24';
	$data['gender'] = 'Male';
	$data['add1'] = '28 Elson Street';
	$data['add2'] = '';
	$data['city'] = 'Markham';
	$data['province'] = 'ON';
	$data['pc'] = 'L3S2J5';
	$data['country'] = 'Canada';
	$data['lcode'] = '416';
	$data['lprefix'] = '524';
	$data['lpostfix'] = '9520';
	
	$profile->fn_setprofile($data);
?
-->

