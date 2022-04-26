
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
<style>
body{
margin : 0;
padding : 0;
}
.head{
background-color : #0000FF;
color : #fff;
height : 50px;
}
h1{
font-family : "Times New Roman", Times, serif;
}
table {
  border-collapse: collapse;
  width: 70%;
}

th, td {
  text-align: center;
  padding: 8px;
}

tr:nth-child(even){border-bottom : 1px solid #ccc;}
tr:nth-child(odd){border-bottom : 1px solid #ccc;}
th {
  background-color: #33B7FF;
}
a{
	text-decoration : none;
	border-radius: 4px; 
	border:none;
	height: 25px;
	width : 100px;
	padding-top : 8px;
	display : inline-block;
	font-size : 17px;
	background-color: rgb(0, 255, 128);
	color : #000;
}
</style>
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
			<th>Airlines Name</th>
				<th>Flight no</th>
				<th>Origin</th>
				<th>Destination</th>
				<th>Departure Time</th>
				<th>Arrival Time</th>
				<th>Fare</th>
				<th>Price</th><th></th>
				
			</tr>

	

			<%
	String origin = (String) request.getAttribute("origin");
	String des = (String) request.getAttribute("destination");
	String date=(String)request.getAttribute("date");
	String totalPerson=(String)request.getAttribute("totalPerson");
	

		String url = "jdbc:mysql://localhost:3306/flyaway";
	String dbusername = "root";
   String dbpassword = "root";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url, dbusername, dbpassword);
		//String sql = "select * from flightdetails where origin=? and destination=?";
		PreparedStatement pstmt = connection.prepareStatement( "select * from flightdetails where origin=? and destination=?");
		pstmt.setString(1, origin);
		pstmt.setString(2, des);
		
		

	/* 	session.setAttribute("origin",origin); 
		session.setAttribute("destination",des); 
		session.setAttribute("date",date); 
		session.setAttribute("totalPerson",totalPerson);  */
		
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			session.setAttribute("fare", rs.getString("fare"));
			session.setAttribute("departure_time",  rs.getString("departure_time"));
			session.setAttribute("arrival_time",rs.getString("arrival_time"));
			

	%>
			<%-- 	
<tr>
	<form action="login.html" method="post">
	<td align="center"><input type="text" name="flightno" value="<%=rs.getString("flatten")%>" hidden><%=rs.getString("flightno")%></td>
	<td align="center"><input type="text" name="origin" value="<%=rs.getString("origin")%>" hidden><%=rs.getString("origin")%></td>
	<td align="center"><input type="text" name="destination" value="<%=rs.getString("destination")%>" hidden><%=rs.getString("destination")%></td>
	<td align="center"><input type="text" name="departure_time" value="<%=rs.getString("departure_time")%>" hidden><%=rs.getString("departure_time")%></td>
	<td align="center"><input type="text" name="arrival_time" value="<%=rs.getString("arrival_time")%>" hidden><%=rs.getString("arrival_time")%></td>
	<td align="center"><input type="text" name="fare" value="<%=rs.getString("fare")%>" hidden><%=rs.getString("fare")%></td>
	<td><input type="submit" value="Book Now"></td>
	
		
	</form> 
</tr>
	 --%>
			<tr>
			    <td><%= rs.getString("airline_name") %></td>
				<td><%= rs.getString("flightno") %></td>
				<td><%= rs.getString("origin")%></td>
				<td><%= rs.getString("destination")%></td>
				<td><%= rs.getString("departure_time")%></td>
				<td><%= rs.getString("arrival_time")%></td>
				<td><%= rs.getString("fare")%></td>
				<td><%= rs.getString("ticket_price") %></td>
				
				<td> <a href="Login.jsp?flightno=<%= rs.getString("flightno") %>"><b>Book Now</b></a></td>
				
			</tr>


			<%
				}
			} catch (Exception e) {
			out.print("Something wrong " + e);
			}
			%>
		</table>
</div>
</center>
</body>
</html>