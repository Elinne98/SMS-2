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
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>
			Untitled
		</TITLE>
		<LINK HREF="../styles/crc_page_style.css" REL="stylesheet" TYPE="text/css">
	</HEAD>
	<BODY>
		<CENTER>

			<!----------------------------------------------------
			// This is the main bosy of the web page. The page
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

			<TABLE CLASS="OUTER">
				<!-- The Page Content -->
				<TR CLASS="OUTER">
					<?php
    
						if (isset($_GET['method'])) {
    
	    					echo 'Doing "' . $_GET['method'] . '" please wait...<br>';
	
    						if ($_GET['method'] == 'login') {
								
								$login = new crc_login(TRUE);
								echo "The username from the page is " . $_POST['username'] . "."
								$result = $log->fn_login($_POST);
								if ($result == false) {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_login.php?uid=' . $_POST['username'] . '&ret=' . $login->lasterrmsg . '">';
								} else {
									session_register('uid');
									session_register('profileid');
									session_register('name');
									session_register('lastlink');
									session_register('data');
									session_register('msg');
									$_SESSION['uid'] = $login->m_uid;
									$_SESSION['name'] = $login->m_name;
									$_SESSION['profileid'] = $login->m_profileid;
									$_SESSION['roleid'] = $login->m_roleid;
									$_SESSION['lastlink'] = '<meta http-equiv="refresh"' . 'content="0;URL=crc_main.php?' . session_name() . '=' . $_SESSION['uid'] . session_id() . '">';
									$login->m_sess = session_id();
									$login->fn_session();
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_main.php?' . session_name() . '=' . session_id() . '&uid=' . $_SESSION['uid'] . '">';
								}

							} else if ($_GET['method'] == 'register') {

								if (isset($_GET['func'])) {

									if ($_GET['func'] == 'add') {

										$register = new crc_register(false);
										$result = $register->fn_register($_POST);

										if ($retsult == false) {
											echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_register.php?ret=' . $register->lasterrmsg . '">';
										} else {
											echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_login.php?uid=' . $_POST['email'] . '">';
										}

									} else {
										echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
									}
								}


							} else if ($_GET['method'] == 'profile') {

								if ($_GET['func'] == 'get') {

									$profile = new crc_profile(false);
									$_SESSION['data'] = $profile->fn_getprofile($_SESSION['uid']);
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_profile.php?func=get&' . session_name() . '=' . session_id() . '">';

								} else if ($_GET['func'] == 'update') {

									$profile = new crc_profile(false);
									$result = $profile->fn_setprofile($_POST);

									if ($result == false) {
										echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_profile.php?ret=' . $profile->lasterrmsg . '">';
									} else {
										$_SESSION['msg'] = 'Profile updated successfully!';
										echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_profile.php?func=msg&uid=' . $_POST['email'] . '">';
									}
								} else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
								}


							} else if ($_GET['method'] == 'schedule') {


								if ($_GET['func'] == 'get') {

									$schedule = new crc_schedule(false);
									$schedule->fn_getschedule($_SESSION['profileid']);
									$_SESSION['data'] = $schedule->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_schedule.php?func=get&' . session_name() . '=' . session_id() . '">';

								} else if ($_GET['func'] == 'add') {

									$schedule = new crc_schedule(false);
									$schedule->fn_addschedule($_SESSION['profileid'], $_GET['schedule']);
									$_SESSION['msg'] = 'Course successfully added!';
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_schedule.php?func=msg&' . session_name() . '=' . session_id() . '">';

								} else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
								}


							} else if ($_GET['method'] == 'courses') {

								if ($_GET['func'] == 'get') {

									$courses = new crc_courses(false);
									$courses->fn_getcourses($_SESSION['profileid']);
									$_SESSION['data'] = $courses->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_courses.php?func=get&' . session_name() . '=' . session_id() . '">';

								} else if ($_GET['func'] == 'remove') {

									$courses = new crc_courses(false);
									$courses->fn_removecourse($_SESSION['profileid'], $_GET['course']);
									$_SESSION['msg'] = 'Course successfully removed!';
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_courses.php?func=msg&' . session_name() . '=' . session_id() . '">';

								} else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
								}


							} else if ($_GET['method'] == 'teacher') {

								if ($_GET['func'] == 'getschedule') {

									$teacher = new crc_teacher(false);
									$teacher->fn_getschedule($_SESSION['profileid']);
									$_SESSION['data'] = $teacher->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_teacher.php?func=getschedule&' . session_name() . '=' . session_id() . '">';

								} else if ($_GET['func'] == 'getstudents') {

									$courseid = $_GET['course'];
									$teacher = new crc_teacher(false);
									$teacher->fn_getstudents($_GET['course']);
									$_SESSION['data'] = $teacher->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_teacher.php?func=getstudents&' . session_name() . '=' . session_id() . '">';

								} else if ($_GET['func'] == 'getattendance') {

									$teacher = new crc_teacher(false);
									$teacher->fn_getattendance($_GET['profileid']);
									$_SESSION['data'] = $teacher->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_attendance.php?func=getattendance&' . session_name() . '=' . session_id() . '">';

								} else if ($_GET['func'] == 'setattendance') {

									$teacher = new crc_teacher(false);
									$teacher->fn_setattendance($_GET['id'], $_GET['action']);
									$teacher->fn_getattendance($_GET['profileid']);
									$_SESSION['data'] = $teacher->m_data;
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_attendance.php?func=getattendance&' . session_name() . '=' . session_id() . '">';

								}else {
									echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
								}

							} else if ($_GET['method'] == 'events') {
								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_events.php?func=get&' . session_name() . '=' . session_id() . '">';

							} else if ($_GET['method'] == 'team') {
								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_team.php?func=get&' . session_name() . '=' . session_id() . '">';

							} else if ($_GET['method'] == 'help') {
								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_help.php?func=get&' . session_name() . '=' . session_id() . '">';

							} else if ($_GET['method'] == 'logout') {
								session_unset();
								session_destroy();
								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_login.php">';

							} else {
								echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
							}

						} else {
							echo '<meta http-equiv="refresh"' . 'content="0;URL=crc_unknown.php?' . session_name() . '=' . session_id() . '">';
						}

					?>

				</TR>
			</TABLE>

		</CENTER>
	</BODY>
</HTML>
