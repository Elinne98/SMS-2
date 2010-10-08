//---------------------------------------------------
// 	Function fShowText
//	==================
//
//	Purpose::	To show text on the browsers
//			Status Bar.
//	Author:		Shaffin N. Bhanji
//	Date:		August 26, 1998
//---------------------------------------------------

function fn_showstatus(text) {
	window.status = text
	setTimeout ("window.status=''",5000)
}

function verify(page) {
	if (page == "register") {
	  if (register.fname.value == "") {
	    alert("Please enter a valid 'Given Name'!");
	    register.fname.focus();
	  } else if (register.password.value == "") {
	    alert("Please enter a valid 'Password'!");
	    register.lname.focus();
	  } else if (register.lname.value == "") {
	    alert("Please enter a valid 'Surname'!");
	    register.lname.focus();
	  } else if (register.email.value == "") {
	    alert("Please enter a valid 'Email'!");
	    register.email.focus();
	  } else if (register.day.value == "00") {
	    alert("Please enter a valid 'Day'!");
	    register.day.focus();
	  } else if (register.month.value == "00") {
	    alert("Please enter a valid 'Month'!");
	    register.month.focus();
	  } else if (register.year.value == "0000") {
	    alert("Please enter a valid 'Year'!");
	    register.year.focus();
	  } else if (register.add1.value == "") {
	    alert("Please enter a valid 'Address'!");
	    register.add1.focus();
	  } else if (register.city.value == "") {
	    alert("Please enter a valid 'City'!");
	    register.city.focus();
	  } else if (register.pc.value == "") {
	    alert("Please enter a valid 'Postal Code'!");
	    register.pc.focus();
	  } else if (register.lcode.value == "") {
	    alert("Please enter a valid 'Phone Code'!");
	    register.lcode.focus();
	  } else if (register.lprefix.value == "") {
	    alert("Please enter a valid 'Phone Prefix'!");
	    register.lprefix.focus();
	  } else if (register.lpostfix.value == "") {
	    alert("Please enter a valid 'Phone Postfix'!");
	    register.lpostfix.focus();
		} else {
	    register.submit();
	  }
	} else if (page == "login") {
	  if (login.username.value == "") {
	    alert("Please enter a valid 'Username'!");
	    login.username.focus();
	  } else if (login.password.value == "") {
	    alert("Please enter a valid 'Password'!");
	    login.password.focus();
		} else {
	    login.submit();
	  }
	} else if (page == "profile") {
	  if (profile.fname.value == "") {
	    alert("Please enter a valid 'Given Name'!");
	    profile.fname.focus();
	  } else if (profile.password.value == "") {
	    alert("Please enter a valid 'Password'!");
	    profile.lname.focus();
	  } else if (profile.lname.value == "") {
	    alert("Please enter a valid 'Surname'!");
	    profile.lname.focus();
	  } else if (profile.email.value == "") {
	    alert("Please enter a valid 'Email'!");
	    profile.email.focus();
	  } else if (profile.day.value == "") {
	    alert("Please enter a valid 'Day'!");
	    profile.day.focus();
	  } else if (profile.month.value == "") {
	    alert("Please enter a valid 'Month'!");
	    profile.month.focus();
	  } else if (profile.year.value == "") {
	    alert("Please enter a valid 'Year'!");
	    profile.year.focus();
	  } else if (profile.add1.value == "") {
	    alert("Please enter a valid 'Address'!");
	    profile.add1.focus();
	  } else if (profile.city.value == "") {
	    alert("Please enter a valid 'City'!");
	    profile.city.focus();
	  } else if (profile.pc.value == "") {
	    alert("Please enter a valid 'Postal Code'!");
	    profile.pc.focus();
	  } else if (profile.lcode.value == "") {
	    alert("Please enter a valid 'Phone Code'!");
	    profile.lcode.focus();
	  } else if (profile.lprefix.value == "") {
	    alert("Please enter a valid 'Phone Prefix'!");
	    profile.lprefix.focus();
	  } else if (profile.lpostfix.value == "") {
	    alert("Please enter a valid 'Phone Postfix'!");
	    profile.lpostfix.focus();
		} else {
	    profile.submit();
	  }
	}
}

