<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
.login-box{
	margin-top : 40px;
	width : 500px;
	color: #000080;
	border : 1px solid #ccc;
	box-shadow : 0 8px 12px 0px rgba(0,0,0,0.3);
	positive : absolute;
}
input{
  	padding: 5px 10px;
  	margin: 8px 0;
  	display: inline-block;
  	border: 2px solid #ccc;
  	border-radius: 4px;
  	box-sizing: border-box;
}
button{
  	border-radius: 4px; 
	border:none;
	height: 30px;
	display : inline-block;
	font-size : 15px;
	color:#fff;
	background-color: rgb(0,0, 255);
	margin : 5px;
}

</style>
</head>
<body>
<center>
<div class="head">
<h1>FlayAway</h1>
</div>
<%
	String flightn = request.getParameter("flightno");
        session.setAttribute("flightno", flightn);
	%>
<div class ="Login-box">

<h1>Login Here</h1>

</div>
<form action="LoginServlet" method="post">
Enter UserName: <input type=" email"  name="email" required="required"><br>
Enter Password: <input type=" password"  name="password" required="required"><br>
<button type="submit">Submit</button>    
<p>
			
			New User? <a href="Registration.jsp?flightno=<% session.setAttribute("flightno",flightn);%>">Register here</a>
			</p>
</form>

</div>
</center>

</body>
</html>