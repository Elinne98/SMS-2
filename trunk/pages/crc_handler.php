<?php
	if(isset($_REQUEST[session_name()])) {
		// There is a session already available
		session_start();
	} else {
		session_name('crc');
		session_start();
	}
	include_once('../classes/crc_login.cls.php');
	include_once('../classes/crc_register.cls.php');
	include_once('../classes/crc_profile.cls.php');
	include_once('../classes/crc_schedule.cls.php');
	include_once('../classes/crc_courses.cls.php');
	include_once('../classes/crc_teacher.cls.php');
	include_once('../classes/crc_evaluation.cls.php');
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>
			<?php
				if (isset($_GET['method'])) {
					$title = "FreeSMS: Method->" . $_GET['method'];
				}
				if (isset($_GET['func'])) {
					$title = $title . " Function->" . $_GET['func'];
				}
				$title = $title . ". Please wait...";
				print '[' . $title . ']';
			?>
		</TITLE>
		<!--LINK HREF="../styles/crc_page_style.css" REL="stylesheet" TYPE="text/css"-->
		<LINK HREF="../styles/crc_main.css" REL="stylesheet" TYPE="text/css">
	</HEAD>
	<BODY>
		<CENTER>

			<!----------------------------------------------------
			// This is the main boss of the web page. The page
			// is broken down into 3 groups as follows:
			//
			// - The "Page Header" where the logo should be placed
			//   and anything else that is to be seen on every page.
			//
			// - The "Page Content" where the content text of the
			//   page is to be placed for users to see.
			//
			// - The "Page Footer" where the closing statements
			//   such as webmaster email and any closing statements
			//   should be placed. Again this will be seen on every page.
			//
			// Note that all this should be placed within a table
			// containing 3 rows respectively.
			------------------------------------------------------>

			<TABLE width="100%">
				<!-- The Page Header -->
				<TR CLASS="OUTER">
					<?php
						include "data/crc_page_header_band.html";
					?>
				</TR>

				<tr>
					<td align="center"><br><br></th>
				</tr>

				<!-- The Page Content -->
					<?php
    
						if (isset($_GET['method'])) {
    
    						echo '<table class="tbl">';
	    					echo '<tr align="center"><td class="error"><b>' . $title . '</b></td></tr>';
						echo '</table>';
						
    						if ($_GET['method'] == 'login') {
								
								$login = new crc_login(FALSE);
								$result = $login->fn_login($_POST);

								if ($result == false) {
									
									$_SESSION['msg'] = $login->lasterrmsg;

									//echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_login.php?uid=' . $_POST['username'] . '&ret=' . $login->lasterrmsg . '">';
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_login.php?' . session_name() . '=' . session_id() . '&uid=' . $_POST['username'] . '">';

								} else {

									session_register('uid');
									session_register('profileid');
									session_register('name');
									session_register('data');
									session_register('profiledata');
									session_register('scheduledata');
									session_register('coursesdata');
									session_register('teacherscheduledata');
									session_register('teacherstudentsdata');
									session_register('teacherattendancegetdata');
									session_register('evaluation');
									$_SESSION['uid'] = $login->m_uid;
									$_SESSION['name'] = $login->m_name;
									$_SESSION['profileid'] = $login->m_profileid;
									$_SESSION['roleid'] = $login->m_roleid;
									$_SESSION['msg'] = "";
									$login->m_sess = session_id();
									$login->fn_session();
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_main.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								}

							} else if ($_GET['method'] == 'register') {

								$_SESSION['msg'] = "";
								session_register('registerdata');

								if (isset($_GET['func'])) {

									if ($_GET['func'] == 'add') {

										$_SESSION['registerdata'] = $_POST;
										
										$register = new crc_register(FALSE);
										$result = $register->fn_register($_POST);

										if ($result == false) {
										
										$_SESSION['msg'] = $register->lasterrmsg;
											echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_register.php?' . session_name() . '=' . session_id() . '&uid=' . $_POST['email'] . '">';
										
										} else {
										
											$_SESSION['registerdata'] = NULL;
											echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_login.php?' . session_name() . '=' . session_id() . '&uid=' . $_POST['email'] . '">';
										
										}

									} else {
										echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
									}
								} else {

									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_register.php?' . session_name() . '=' . session_id() . '">';

								}


							} else if ($_GET['method'] == 'profile') {

								$_SESSION['msg'] = "";

								if ($_GET['func'] == 'get') {

									$profile = new crc_profile(FALSE);
									$_SESSION['profiledata'] = $profile->fn_getprofile($_SESSION['uid']);
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_profile.php?func=get&' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else if ($_GET['func'] == 'update') {

									$profile = new crc_profile(FALSE);
									$result = $profile->fn_setprofile($_POST);

									if ($result == false) {
										$_SESSION['msg'] = $profile->lasterrmsg;
										echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_profile.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
									} else {
										$_SESSION['profiledata'] = $profile->fn_getprofile($_SESSION['uid']);
										$_SESSION['msg'] = "Profile updated successfully!";
										echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_profile.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
									}
								} else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
								}


							} else if ($_GET['method'] == 'schedule') {

								$_SESSION['msg'] = "";

								if ($_GET['func'] == 'get') {

									$schedule = new crc_schedule(FALSE);
									$schedule->fn_getschedule($_SESSION['profileid'], $_SESSION['roleid']);
									$_SESSION['scheduledata'] = $schedule->m_data;
									
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_schedule.php?func=get&' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else if ($_GET['func'] == 'add') {

									$schedule = new crc_schedule(FALSE);
									$schedule->fn_addschedule($_SESSION['profileid'], $_GET['schedule']);
									$_SESSION['msg'] = 'Course successfully added!';
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_schedule.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
								}


							} else if ($_GET['method'] == 'courses') {

								$_SESSION['msg'] = "";

								if ($_GET['func'] == 'get') {

									$courses = new crc_courses(FALSE);
									$courses->fn_getcourses($_SESSION['profileid']);
									$_SESSION['coursesdata'] = $courses->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_courses.php?func=get&' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else if ($_GET['func'] == 'remove') {

									$courses = new crc_courses(FALSE);
									$courses->fn_removecourse($_SESSION['profileid'], $_GET['course']);
									$_SESSION['msg'] = 'Course successfully removed!';
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_courses.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
								}


							} else if ($_GET['method'] == 'teacher') {

								$_SESSION['msg'] = "";

								if ($_GET['func'] == 'getschedule') {

									$teacher = new crc_teacher(FALSE);
									$teacher->fn_getschedule($_SESSION['profileid']);
									$_SESSION['teacherscheduledata'] = $teacher->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_teacher.php?func=getschedule&' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else if ($_GET['func'] == 'getstudents') {

									$scheduleid = $_GET['scheduleid'];
									$teacher = new crc_teacher(FALSE);
									$teacher->fn_getstudents($scheduleid);
									$_SESSION['teacherstudentsdata'] = $teacher->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_students.php?func=getstudents&' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else if ($_GET['func'] == 'getattendance') {

									$scheduleid = $_GET['scheduleid'];
									$profileid = $_GET['profileid'];
									$teacher = new crc_teacher(FALSE);
									$teacher->fn_getattendance($profileid, $scheduleid);
									$_SESSION['teacherattendancegetdata'] = $teacher->m_data;
									//die();
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_attendance.php?func=getattendance&' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else if ($_GET['func'] == 'setattendance') {

									$teacher = new crc_teacher(FALSE);
									$attendanceid = $_GET['id'];
									$action = $_GET['action'];
									$teacher->fn_setattendance($attendanceid, $action);
									
									$scheduleid = $_GET['scheduleid'];
									$profileid = $_GET['profileid'];
									$teacher->fn_getattendance($profileid, $scheduleid);
									$_SESSION['teacherattendancegetdata'] = $teacher->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_attendance.php?func=getattendance&' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								}else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
								}

							} else if ($_GET['method'] == 'admin') {
								$_SESSION['msg'] = "";

								if ($_GET['func'] == 'gettools') {

									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_admin.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

								} else {
								
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_admin.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
								
								}
								
							} else if ($_GET['method'] == 'evaluation') {

								$_SESSION['msg'] = "";
								
								if ($_GET['func'] == 'get') {
								
									$evaluation = new crc_evaluation(FALSE);
									$evaluation->fn_getquestions();
									$_SESSION['evaluation'] = $evaluation->m_data;

									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_evaluation.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '&course=' . $_GET['course'] . '">';
								
								} else if ($_GET['func'] == 'add') { 
								
									$evaluation = new crc_evaluation(FALSE);
									
									if ($evaluation->fn_setquestions($_SESSION['profileid'], $_GET['questions'], $_POST)) {

										$_SESSION['msg'] = "Thank you! You feedback is important to us and will be communicated accordingly.";
									
									} else {
									
										$_SESSION['msg'] = "Sorry, There was an error submittimg your feedback.";

									}

									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_evaluation.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '&course=' . $_GET['course'] . '">';
								
								}
								

							} else if ($_GET['method'] == 'faq') {
								$_SESSION['msg'] = "";

								echo '<meta http-equiv="refresh"' . 'content="0;URL=../faq/index.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

							} else if ($_GET['method'] == 'events') {
								$_SESSION['msg'] = "";

								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_events.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

							} else if ($_GET['method'] == 'team') {
								$_SESSION['msg'] = "";

								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_team.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

							} else if ($_GET['method'] == 'help') {
								$_SESSION['msg'] = "";

								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_help.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';

							} else if ($_GET['method'] == 'logout') {
								$_SESSION['msg'] = "";

								session_unset();
								session_destroy();

								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_login.php">';

							} else {
								$_SESSION['msg'] = "";
								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
							}

						} else {
								$_SESSION['msg'] = "";
							echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
						}

					?>

				</TR>
			</TABLE>

		</CENTER>
	</BODY>
</HTML>
