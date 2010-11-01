<?php
require_once(dirname(__FILE__) . '/../classes/crc_dbsetup.cls.php');

class TestOfDBSetupClass extends UnitTestCase {
	function testDBSetup() {
		$dbsetup = new crc_dbsetup(false);
		
		//invalid input
		$dbname = "";
		$rootpwd = "";
		$username = "";
		$userpwd = "";
		$this->assertFalse($dbsetup->fn_dbsetup($dbname, $rootpwd, $username, $userpwd));
		$this->assertEqual($dbsetup->lasterrmsg, "Invalid input");
		
		//create database
		$dbname = "crcdb";
		$rootpwd = "Aephae4A";
		$username = "bogdan";
		$userpwd = "ewigkeit";
		$this->assertTrue($dbsetup->fn_dbsetup($dbname, $rootpwd, $username, $userpwd));
	}
}
?>
