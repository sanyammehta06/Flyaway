<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Register</title>
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
	margin: auto;
	font-family : "Times New Roman", Times, serif;
	text-align : center;
}
.register-box{
	margin :auto;
	margin-top : 40px;
	color: 	#000080;
	width : 500px;
	border : 1px solid #ccc;
	box-shadow : 0 8px 12px 0px rgba(0,0,0,0.3);
	positive : absolute;
}
label{
	font-weight : bold;
	padding-left: 70px ;
	font-size: 15px;

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
	font-width : bold;
	color:#fff;
	background-color: rgb(0,0,255);
	margin : 10px;
}
</style>

</head>
<body>
<div class="head">
	<h1>FlyAway</h1>
</div>
<div class="register-box">
	<div>
	<h2><center><u>Register here</u></center></h2>
	</div>
	<div>
		<form action="Register" method="post">
			<label style="padding-right: 60px;">Enter Email : </label><input type="email" name="email" required="required"><br>
			<label style="padding-right: 30px;">Enter First Name :</label><input type="text" name="fname" required="required"><br>
			<label style="padding-right: 30px;">Enter Last Name : </label><input type="text" name="lname" required="required"><br>
			<label style="padding-right: 75px;">Enter Age : </label><input type="number" name="age" maxlength="2" required="required">	<br>
			<label>Enter Mobile Number : </label><input type="text" name="contact" maxlength="10" required="required"><br>
			<label style="padding-right: 80px;">Gender : </label><span><input type="radio" name="gender" value="female">Female
				    	<input type="radio" name="gender" value="Male">Male</span><br/>
		    <label style="padding-right: 80px;">Password : </label><input type="password" name="password"><br/>
			<label style="padding-right: 85px;">Country : </label><input type="text" name="country" required="required"><br>
			
			<center><button type="submit">Register</button>		    <button type="reset">Clear</button>	</center>
						
		</form>
	</div>
</div>
</body>
</html>