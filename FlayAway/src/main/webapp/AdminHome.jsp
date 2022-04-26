<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>
body{
margin:0;
}
.head{
background-color : #0000FF;
color : #fff;
height : 50px;
}
h2{
padding-top : 10px;
font-family : "Times New Roman", Times, serif;
}
a{
margin : 5px 5px;
padding : 5px;
text-decoration : none;
}
</style>
</head>
<body>
<center>
	<div class="head"><h2>FlyAway</h2>
	</div>
</center>
<div><h2>
   <%  String email=(String)session.getAttribute("email"); 
   
   	 out.println("Welcome to Admin Page");
   %>
</h2></div>
<hr>
<center>
<div class="topnav">
  <h3><a href="ChangePassword.jsp"style="text-decoration: none;color:black";>Change Password</a><br>
  <a href="Places.jsp"style="text-decoration: none;color:black";>List of Places</a><br>
  <a href="AirlineList.jsp"style="text-decoration: none;color:black";>List of Airlines</a><br>
  <a href="FlightsList.jsp"style="text-decoration: none;color:black";>List of Flights</a></h3><br>
</div>
<br>

 <button ><a href="HomePage.html"  style="text-decoration:none">Logout</a></button>
</center>
</body>
</html>