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
            background-image:url("grids.png");
        }

        .topnav a {
            float: left;
            color: black;
            text-align: center;
            padding: 24px 126px;
            text-decoration: none;
            font-size: 17px;
            background-color: aqua;
        }

        .logout {
            float: right;
            text-decoration: none;
            margin-right: 170px;
            color: black;
        }

        .logout a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .bord {
            border: 1px solid black;
            height: 600px;
            width: 93%;
            margin-left: 45px;
            background-color: #b3b3b3;
            margin-top:80px;
        }

        section {
            border: 1px solid black;
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

        .col {
            padding: 150px;
        }
        .head{
		height:50px;
		width:100%;
		background-color:gray;
		text-align:center;
		font-size:30px;
		}
		.footer {
    width: auto%;
    height: 50px;
    background-color:gray;
    bottom: 0;
    position: fixed;
}
    </style>
</head>

<body>
        <div class="head"><marquee>Stock Market Charting</marquee></div>
    <div class="bord"><br>

    
        <div class="topnav">
            <a class="active" href="companyList">Import Data</a>
          <a href="addCompany">Manage Company</a>
          <a href="stockexchangelist">Manage Exchange</a>
          <a href="ipoDetailsList">Update IPO details</a>
          <a href="login">Logout</a>
        </div>
        <div class="container">
            <h3 style="text-align: center;">List of Companies</h3><br>
            <section class="row">
                <img src="one.jfif" alt="company-one" class="img col-md-3">
                <p class="col-md-2 ptext">Company 1</p>
                <p class="col-md-2 ptext">BSE,NSE</p>
                <p class="col-md-3 ptext">Brief Writeup</p>
                <p class="col-md-2 ptext"><input type="button" name="save" value="Edit" class="edit"></p>
            </section>
            <br>
            <section class="row">
                <img src="two.jfif" alt="company-one" class="img col-md-3">
                <p class="col-md-2 ptext">Company 2</p>
                <p class="col-md-2 ptext">BSE</p>
                <p class="col-md-3 ptext">Brief Writeup</p>
                <p class="col-md-2 ptext"><input type="button" name="save" value="Edit" class="edit"></p>
            </section>
        </div>
    </div>
    <div class="footer"></div>
</body>

</html>