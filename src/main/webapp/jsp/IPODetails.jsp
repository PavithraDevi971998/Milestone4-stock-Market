<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>stock exchange</title>
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
        }
        .logout {
            float:right;
            text-decoration: none;
            margin-right: 170px;
            color: black
        }
        .logout a:hover {
          background-color: #ddd;
          color: black;
        }
        .topnav a:hover {
          background-color: #ddd;
          color: black;
        }
        .bord{
           height:600px;
           width:93%;
          margin-left: 45px;
         
        }
		.head{
		height:50px;
		width:100%;
		background-color:gray;
		text-align:center;
		font-size:30px;
		}
table#table1 {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
	margin-top: 70px;
}
  
tr, td {
	text-align: left;
	padding: 10px;
}
</style>
</head>
<body style="background-color:	#deeded	">
	
  <div class="head"><marquee>Stock Market Charting</marquee></div><br><br>
      <div class="bord"><br>
   
        <div class="topnav">
          <a class="active" href="ImportStackPage.html">Import Data</a>
          <a href="InsertCompanyPage.html">Manage Company</a>
          <a href="ListCompanies.html">Manage Exchange</a>
          <a href="#about">Update IPO details</a>
          <a href="login">Logout</a>
        </div>
	
				<form:form method="POST" action="/ipoDetailsList" modelAttribute="ipo1">
				
					<table id="table1">
						
						<tr>
							<th>Company code</th>
							<td><form:input path="companyCode" type="text" /></td>
						</tr>
						<tr>
							<th>Stock Exchange</th>
							<td><form:input path="stock_exchange" type="text" /></td>
						</tr>
						<tr>
							<th>Price</th>
							<td><form:input path="price" type="text" /></td>
						</tr>

						<tr>
							<th>Total</th>
							<td><form:input path="total" type="text" /></td>
						</tr>
						<tr>
							<th>Date Time</th>
							<td><form:input path="date_time" type="date" /></td>
						</tr>
						<tr>
							<th>Remarks</th>
							<td><form:input path="remarks" type="text" /></td>
						</tr>
						<tr>
							<td><input type="submit" value="submit"></td>
							<td><input type="reset" value="reset"></td>
						</tr>
						
					</table>
				</form:form></div>
				
</body>
</html>