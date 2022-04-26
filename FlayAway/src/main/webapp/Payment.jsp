<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
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
.pay-box{
	margin :auto;
	margin-top : 40px;
	color: #000080;
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
select{
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
	width : 100px;
	border:none;
	height: 30px;
	display : inline-block;
	font-size : 15px;
	font-width : bold;
	background-color: Blue;
	color:#fff;
	margin:5px;
	}
</style>
</head>
<body>
<div class="head">
	<h1>FlyAway</h1>
</div>
	<%   
	Object flight=session.getAttribute("flightno");
	%>
	<div class="pay-box">
	<div>
	<h2><center><u>Make Payment</u></center></h2>
	</div>
		<form action="BookingDetails.jsp" method="post">
			<label style="padding-right: 60px;">Enter Card No :</label> 
			<input type="text" name="cardno"  placeholder="Card Number"><br/>
			<label>Enter Card Holder Name :</label>
			<input type="text" name="nameoncard" placeholder="Name on card" ><br/>
			<label style="padding-right: 30px;">Expiry date :</label>
			<span><select name=month>Month
			  <option >Month</option>
			  <% for(int i=1;i<=12;i++){ %>
			  <option value="<% out.println(i); %>"><% out.println(i); %></option>
			  <%} %>
			  </select>
			  <select name=year>Year
			  <option >Year</option>
			  <% for(int i=2020;i<=2030;i++){ %>
			  <option value="<% out.println(i); %>"><% out.println(i); %></option>
			  <%} %>
			  </select></span><br>
			  
			 <label style="padding-right: 60px;"> Enter cvv :</label>
			  <input type="password" name="cvv" placeholder=" Enter your cvv" maxlength="3" >
			  <br>
			  
			  <center><button type="submit" name="submit">Pay</button></center>
		
		</form>
	</div>
</body>
</html>