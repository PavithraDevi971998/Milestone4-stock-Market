<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Admin Landing Page</title>
    <style>
            body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color:  #e0ebeb;
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

        .topnav a:hover {
            background-color:brown;
            color: black;
        }

        .bord {
          
            height: 600px;
            width: 93%;
            margin-left: 45px;
           
            margin-top:80px;
        }

        .img {
            height: 50px;
            width: 80px;
            margin-top: 20px;
        }

        .ptext {
            margin-top: 60px;
        }

        .edit {
            width: 60px;
        }
.bords{
width:100%;
}
        .col {
            padding: 100px;
        }
        .head{
		height:70px;
		width:100%;
		background-color:gray;
		text-align:center;
		font-size:30px;
		}
			.footer {
    width: auto;
    height: 50px;
    background-color:gray;
    bottom: 0;
    position: fixed;
}  </style>
        </head>
        <body >
          <div class="head"><marquee>Stock Market Charting</marquee></div>
      <p style="text-align: center;font-size: 32px;">User Landing Page</p><br>
      <div class="bord"><br>
        
        <div class="topnav">
          <a class="active" href="addIpodetails">IPO'S</a>
          <a href="companyList">Compare Company</a>
          <a href="ComparsionChart">Compare Sectors</a>
          <a href="login">Logout</a>
        </div>
        <table>
                <tr>
       <th> Select Company/Sector:</th><td><select>
            <option value="volvo">Company</option>
            <option value="saab">Saab</option>
            <option value="opel">Opel</option>
            <option value="audi">Audi</option>
          </select></td></tr>
        <tr><th>Select Stock Exchange:</th><td><select>
                <option value="BSE">BSE</option>
                <option value="NSE">NSE</option>
              </select></td></tr>
      <tr><th> Company Name:</th><td><input type="text" name="cname"></td></tr> 
       <tr> <th>From Period</th><td><input type="date" name="date">To Period</th><td><input type="date" name="date"></td></tr>
       <tr><th> Specify Periodicity:</th><td><input type="date" name="cname"></td></tr>  
       <tr><th><input type="button" class="butn"  name="save" value="Generate Map"></th></tr>
    </table>
  </div>
    
    <div class="footer"></div>
    
        </body>
        </html>