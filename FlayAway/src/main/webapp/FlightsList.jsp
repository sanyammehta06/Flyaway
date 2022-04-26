<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight details</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>

<body>
<center>
<h3>Flight List</h3>
	<table>
		<tr>
			<th>Flight No</th>
			<th>Airline Name</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Departure Time</th>
			<th>Ticket Price</th>
		</tr>


		<%
			String url = "jdbc:mysql://localhost:3306/flyaway";
		String dbusername = "root";
		String dbpassword = "root";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, dbusername, dbpassword);

			String sqlQuery = "select flightno,airline_name,origin,destination,departure_time,fare from flightdetails";
			PreparedStatement pstmt = connection.prepareStatement(sqlQuery);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
		%>




		<tr>

			<td><%=rs.getString("flightno")%></td>
			<td><%=rs.getString("airline_name")%></td>
			<td><%=rs.getString("origin")%></td>
			<td><%=rs.getString("destination")%></td>
			<td><%=rs.getString("departure_time")%></td>
			<td><%=rs.getString("fare")%></td>
		</tr>


		<%
			}
		%>

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