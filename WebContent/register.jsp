<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<form action="Validate_user.jsp" method="post">
<table>
<tr><td>First Name:</td><td><input type="text" name="fname"></td></tr>
<tr><td>Last Name:</td><td><input type="text" name="lname"></td></tr>
<tr><td>Email:</td><td><input type="text" name="email"></td></tr>
<tr><td>Password:</td><td><input type="password" name="pass"></td></tr>
<tr><td>Confirm password:</td><td><input type="password" name="cpass"></td></tr>
<tr><td>DOB:</td><td><input type="text" name="dob"></td></tr>
<tr><td>Age:</td><td><input type="text" name="age"></td></tr>
<tr><td>Gender:</td><td><input type="text" name="gender"></td></tr>
<tr><td>Address:</td><td><input type="text" name="address"></td></tr>
<tr><td>Country:</td><td><input type="text" name="country"></td></tr>
<tr><td>State:</td><td><input type="text" name="state"></td></tr>
<tr><td>City:</td><td><input type="text" name="city"></td></tr>
<tr><td>Telephone:</td><td><input type="text" name="tno"></td></tr>
<tr><td>Mobile:</td><td><input type="text" name="mobile"></td></tr>
<tr><td></td><td><input type="submit"  class="button" value="Submit"></td></tr>
</table>

</form>
</body>
</html>