<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
 <form action="ChangePassword" method="post">
   Admin Email Id : <input name="email" value="<%= session.getAttribute("email")%>" readonly="readonly">
    <br>
    <br>
	Enter Password: <input type=" password"  name="password" required="required"><br>
	<br>
	<br>
	<button type="submit">Change Password</button>
    </form>
    <br>
    <br>
    <center>
    <button><a href="AdminHome.jsp" style="text-decoration:none;">GoTo HomePage</a></button>
</center>
</body>
</html>