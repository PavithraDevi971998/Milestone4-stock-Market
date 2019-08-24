<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Admin Landing Page</title>
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	
}

.topnav{
        margin-bottom:40px;}

        .topnav a {
            float: left;
            color: black;
            text-align: center;
            padding: 24px 126px;
            text-decoration: none;
            font-size: 17px;
            background-color: #ff9900;
            width:auto;
        }

        .topnav a:hover {
            background-color:brown;
            color: black;
        }

.bord {
	
	height: 600px;
	width: 100%;
	margin-left: 45px;
	
}

.head {
	height: 75px;
	width: 100%;
	background-color: gray;
	text-align: center;
	font-size: 30px;
}
th{
padding-left:500px;
padding-bottom:20px;}
.bton{
padding-left:500px;
}
table#table1 {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
	margin-top: 70px;
}
.footer {
	width: 100%;
	height: 50px;
	background-color: gray;
	bottom: 0;
	position: fixed;
}
</style>
</head>
<body>
	<div class="head">
		<marquee>Stock Market Charting</marquee>
	</div>
	<p style="text-align: center; font-size: 32px;">Create New Company</p>
	<br>
	<div class="bord">
		
		<div class="topnav">
			 <a class="active" href="companyList">Import Data</a>
          <a href="addCompany">Manage Company</a>
          <a href="stockexchangelist">Manage Exchange</a>
          <a href="ipoDetailsList">Update IPO details</a><a class="active" href="/login">Logout</a>
		</div><br><br>
		
		<form:form method="POST" action="/addCompany" modelAttribute="e1"><br><br>
			<table id="#table1 ">
		
			<tr>
				<th>Company name:</th>
				<td><form:input path="companyName" type="text" />
				<br>
				<form:errors path="companyName" class="text-danger" /></td></tr>
			
			<tr>
				<th>TurnOver:</th>
				<td><form:input path="turnOver" type="text" />
				<br>
				<form:errors path="turnOver" class="text-danger" /></td></tr>
			
			<tr>
				<th>Ceo:</th>
				<td><form:input path="ceo" type="text" />
				<br>
				<form:errors path="ceo" class="text-danger" /></td>
			</tr>


			<tr>
				<th>Boardofdirectors:</th>
				<td><form:input path="boardOfDirectors" type="text" />
				<br>
				<form:errors path="boardOfDirectors" class="text-danger" /></td>
			</tr>
			<tr>
				<th>Sectorid:</th>
				<td><form:input path="sectorid" type="text" />
				<br>
			
			<form:errors path="sectorid" class="text-danger" /></td></tr>
			<tr>
				<th>briefWriteup:</th>
				<td><form:input path="briefWriteup" type="text" />
				<br>
			
			<form:errors path="briefWriteup" class="text-danger" /></td></tr>
			<tr>
				<th>Stock code:</th>
				<td><form:input path="stockCode" type="text" /></td>
				<br>
			</tr></table>
		<div class="bton"><input type="submit" name="submit"  value="submit"> </div>
		</form:form>
	</div>
	<div class=footer></div>
</body>
</html>