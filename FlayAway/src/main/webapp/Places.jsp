<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unique Places</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
<center>
<h3>List of Places </h3>
<table>
	<tr><th>Source</th>
	<th>Destination</th>
	</tr>
	
	
<% String url = "jdbc:mysql://localhost:3306/flyaway";
String dbusername = "root";
String dbpassword = "root";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection = DriverManager.getConnection(url, dbusername, dbpassword);

	String sqlQuery = "select distinct origin,destination from flightdetails";
	PreparedStatement pstmt = connection.prepareStatement(sqlQuery);
	
	ResultSet rs=pstmt.executeQuery();
	while(rs.next()){	
	
	%>
	
	
	
	
	<tr>
	<td><%= rs.getString("origin")%></td>
	<td><%= rs.getString("destination") %></td>
	</tr>
	

<% 	}%>

<%
	

} catch (Exception e) {
	// TODO: handle exception
}


%>


</table>
<br>
<br>
<center>
 <button ><a href="AdminHome.jsp"  style="text-decoration:none">Go back to home page</a></button>
</center>
</body>
</html>