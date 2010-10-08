<?php
	// Include the CRC Object class that needs to
	// extended by all classes. This is the super
	// class.
	include_once('crc_constants.mod.php');
	include_once('crc_object.cls.php');

	//******************************************
	// Name: crc_ldap
	//******************************************
	//
	// Desc: This object is responsible for all ldap calls
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

	class crc_mysql extends crc_object {

		var $m_mysqlserver;
		var $m_mysqlport;
		var $m_mysqlusername;
		var $m_mysqlpassword;
		var $m_mysqlhandle;

		function crc_mysql($debug) {
			//***************************************
			// The constructor
			//***************************************
			$this->classname = 'crc_mysql';
			$this->classdescription = 'This object is the primary interface to all mysql calls';
			$this->classversion = '1.0.0';
			$this->classdate = 'March 10th, 2003';
			$this->classdevelopername = 'Shaffin Bhanji';
			$this->classdeveloperemail = 'shaffin_bhanji@hotmail.com';
			$this->_DEBUG = $debug;
			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo "DEBUG {crc_mysql::constructor}: The class \"crc_mysql\" was successfuly created. <br>";
				echo "DEBUG {crc_mysql::constructor}: Running in debug mode. <br>";
				echo '</font>';
			}
		}

		function set_serverinfo($server, $port) {
			//***************************************
			// Set the mysql server configuration
			//***************************************
			$this->m_mysqlserver = $server;
			$this->m_mysqlport = $port;
			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo "DEBUG {crc_mysql::set_serverinfo}: The server name and port number is set to: server->" .  $this->m_mysqlserver .
							" port->" . $this->m_mysqlport . ". <br>";
				echo '</font>';
			}
			return true;
		}

		function set_userinfo($user, $pass) {
			//***************************************
			// Set the mysql user information
			//***************************************
			$this->m_mysqlusername = $user;
			$this->m_mysqlpassword = $pass;
			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo "DEBUG {crc_mysql::set_userinfo}: The user name and password is set to: username->" .  $this->m_mysqlusername .
							" password->********. <br>";
				echo '</font>';
			}
			return true;
		}

		function fn_connect() {
			//***************************************
			// Connect to the mysql server
			//***************************************

			// if success return handle, else return false
			$this->set_serverinfo(MYSQL_SERVER, MYSQL_PORT);//TODO: port name is not used
			$this->set_userinfo(MYSQL_USER, MYSQL_PASS);

			$this->m_mysqlhandle = mysql_connect($this->m_mysqlserver, $this->m_mysqlusername, $this->m_mysqlpassword);
			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo "DEBUG {crc_mysql::fn_connect}: The server connection handle is: " .  $this->m_mysqlhandle . ". <br>";
				echo '</font>';
			}
			
			if ($this->m_mysqlhandle) {
				return $this->m_mysqlhandle;
			} else {
				if ($this->_DEBUG) {
					echo '<font color="red">';
					echo 'ERROR {crc_mysql::fn_connect}: Could not connect to the server. <br>';
					echo 'ERROR {crc_mysql::fn_connect}: Error number: ' . mysql_errno() . '. <br>';
					echo 'ERROR {crc_mysql::fn_connect}: Error description: ' . mysql_error() . '. <br>';
					echo '</font>';
				}
				$this->m_mysqlhandle = 0;
				$this->lasterrnum = mysql_errno();
				$this->lasterrmsg = mysql_error();
				return $this->m_mysqlhandle;
				die;
			}
		}

		function fn_runsql($db, $sql) {
			//***************************************
			// Run SQL 
			//***************************************
			if ($this->m_mysqlhandle != 0) {
				if (mysql_select_db($db) == false) {
					if ($this->_DEBUG) {
						echo '<font color="blue">';
						echo 'DEBUG {crc_mysql::fn_runsql}: Cannot connect to database: ' . $db . '. <br>';
						echo '</font>';
					}
					return null;
				}
				if ($this->_DEBUG) {
					echo '<font color="blue">';
					echo 'DEBUG {crc_mysql::fn_runsql}: Running an SQL against database: ' . $db . '. <br>';
					echo 'DEBUG {crc_mysql::fn_runsql}: Running the SQL command: ' . $sql . '. <br>';
					echo '</font>';
				}
				
				$rows = mysql_query($sql);
				if ($this->_DEBUG) {
					//if ((strpos($sql,'insert') === false) | (strpos($sql,'update') === false)) {
					if (strpos($sql,"insert",0) !== false) {
						echo '<font color="blue">';
						echo 'DEBUG {crc_mysql::fn_runsql}: Number of rows affected (INSERT): ' . $rows . '. <br>';
						echo '</font>';
					} elseif (strpos($sql,"update",0) !== false) {
						echo '<font color="blue">';
						echo 'DEBUG {crc_mysql::fn_runsql}: Number of rows affected (UPDATE): ' . $rows . '. <br>';
						echo '</font>';
					} elseif (strpos($sql,"delete",0) !== false) {
						echo '<font color="blue">';
						echo 'DEBUG {crc_mysql::fn_runsql}: Number of rows affected (DELETE): ' . $rows . '. <br>';
						echo '</font>';
					} else {
						echo '<font color="blue">';
						echo 'DEBUG {crc_mysql::fn_runsql}: The SQL resource: : ' . $rows . '. <br>';
						echo 'DEBUG {crc_mysql::fn_runsql}: Number of rows returned: ' . mysql_num_rows($rows) . '. <br>';
						echo '</font>';
					}
				}
				if ($rows) {
					return $rows;
				} else {
					$this->lasterrnum = mysql_errno();
					$this->lasterrmsg = mysql_error();
					if ($this->_DEBUG) {
						echo '<font color="red">';
						echo 'ERROR {crc_mysql::fn_runsql}: The sql command returned nothing. <br>';
						echo 'ERROR {crc_mysql::fn_connect}: Error number: ' . mysql_errno() . '. <br>';
						echo 'ERROR {crc_mysql::fn_connect}: Error description: ' . mysql_error() . '. <br>';
						echo '</font>';
						die();
					}
					return null;
				}
			}
		}		  

		function fn_freesql($resource) {
			//***************************************
			// Run SQL 
			//***************************************
			$result = false;

			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo 'DEBUG {crc_mysql::fn_freesql}: Freeing the SQL resultset: ' . $resource . '. <br>';
				echo '</font>';
			}

			if (strpos((string)$resource, "Resource") != false) {
				$result = mysql_free_result($resource); 

				if ($result == false) {
					$this->lasterrnum = mysql_errno();
					$this->lasterrmsg = mysql_error();
					if ($this->_DEBUG) {
						echo '<font color="red">';
						echo 'ERROR {crc_mysql::fn_freesql}: The resource could not be freed. <br>';
						echo 'ERROR {crc_mysql::fn_connect}: Error number: ' . $this->m_lasterrnum . '. <br>';
						echo 'ERROR {crc_mysql::fn_connect}: Error description: ' . $this->m_lasterrmsg . '. <br>';
						echo '</font>';
						//die();
					}
				}
			}
			return $result;
		}		


		function fn_print($result) {
			//***************************************
			// Run SQL 
			//***************************************
			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo 'DEBUG {crc_mysql::fn_print}: Printing the SQL resultset. <br>';
				echo '</font>';
			}
			
			$table = $this->get_style();
			$table .= '<table>'; 
			while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) { 
				$table .= '<tr>'; 
				foreach ($line as $col_value) { 
					$table .= '<td class="e">' . $col_value . '</td>'; 
				} 
				$table .= '</tr>'; 
			} 
			$table .= '</table>';
			print($table); 
		}		  


		function fn_disconnect() {
			//***************************************
			// Disconnect to the mysql server
			//***************************************
			$result = false;
			
			if ($this->_DEBUG) {
				echo '<font color="blue">';
				echo 'DEBUG {crc_mysql::fn_disconnect}: Disconnecting from database handle: ' . $this->m_mysqlhandle . '. <br>';
				echo '</font>';
			}
			
			if (isset($this->m_mysqlhandle)) {
				mysql_close($this->m_mysqlhandle);
				$result = true;
			} else {
				$this->lasterrnum = ERR_MYSQL_DISCONNECT_NUM;
				$this->lasterrmsg = ERR_MYSQL_DISCONNECT_DESC;
				$result = false;
			}
			return $result;
		}
	}
?>	

	
<!--
?php 
	//This is a test code to test this class
	$test = new crc_mysql(True);
	$test->fn_connect();
	$result = $test->fn_runsql('crcdb', 'select * from crc_roles');
	$test->fn_print($result);
	$test->fn_freesql($result);	
	$test->fn_disconnect();
?
-->
