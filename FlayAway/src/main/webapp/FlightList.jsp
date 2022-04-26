<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div>
<div class="head">
	<h1>FlyAway</h1>
</div>
</div>
<div>
	<h2>* Available flights are here *</h2>
		<table>
			<tr>
				<th>Flight no </th>
				<th> Airline Name </th>
				<th> Origin </th>
				<th> Destination </th>
				<th> Departure Time </th>
				<th> Reaching Time </th>
				<th> Fare</th>
				<th> Ticket Price</th>
				<th></th>
				
			</tr>
			
		<% 	
		Connection connection;
		  // PreparedStatement pstmt;
		
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "root");
		
			System.out.println("connection success");
			PreparedStatement pstmt = connection.prepareStatement("select flightno,airline_name,origin,destination,departure_time,arrival_time,fare,ticket_price from flightdetails");
					ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
		 %>
		 	<tr>

			<td><%=rs.getString("flightno")%></td>
			<td><%=rs.getString("airline_name")%></td>
			<td><%=rs.getString("origin")%></td>
			<td><%=rs.getString("destination")%></td>
			<td><%=rs.getString("departure_time")%></td>
			<td><%=rs.getString("arrival_time")%></td>
			<td><%=rs.getString("fare")%></td>
			<td><%=rs.getString("ticket_price")%></td>
		
			
		</tr>


		<%
			}
			%>
				</table>
	<br>
	<br>
	<center>

</body>
</html>