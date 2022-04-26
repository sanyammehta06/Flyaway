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
<title>Airline List</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
<center>
<h3> Airline list </h3>
<table>
	<tr><th>Airline Name</th>
	<th>Flight No</th>
	</tr>
	
	
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "root");

	//String sqlQuery = "select distinct airline_name,flightno from flightdetails";
	PreparedStatement pstmt = connection.prepareStatement("select distinct airline_name,flightno from flightdetails");
	
	ResultSet rs=pstmt.executeQuery();
	while(rs.next()){	
	
	%>
	
	
	
	
	<tr>
	<td><%= rs.getString("airline_name")%></td>
<td><%= rs.getString("flightno")%></td>
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