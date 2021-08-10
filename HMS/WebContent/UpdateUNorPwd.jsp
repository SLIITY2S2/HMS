<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
    
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="header.css" />
	<link rel="stylesheet" type="text/css" href="footer.css" />
	<link rel="stylesheet" type="text/css" href="Login.css" />
    <title>Login</title>

  </head>
	<body>
	<body>
	 <div style="background-image: url('./images/header.jpg');  width: 100%; height: 215px;">
		<div class="row">
			<div class="column1">
				<img src="images/logo.png" alt="logo" width="190px" height="190px">
			</div>
			<div class="column2">
				<h1><b>Matale Private Hospital Ltd</b></h1>
				<h3><i>Inspiring better health for you and your loving ones...</i></h3>
			</div>
		
	 	</div>
	 </div>
	
	<div class="background">
	<br><br><br>
	
	  <div class="container">
	  <div class="col-xs-12 col-sm-8 col-md-4 col-lg-4 col-centered">
	  <a href="fogottenUNorPwd.jsp"><img alt="close" src="./images/close.jpg" width="60px" height="60px"></a>
	  <div class="jumbotron">
	  	
	        <h2>Change Username and Password</h2>
	        <form action="#">
	          <div class="form-group">
	          <label for="username" >Username</label>
	            <input type="text" class="form-control" name="username" placeholder="Enter Username">
	          </div>
	          <div class="form-group">
	          	<label for="password" >Password</label>
	            <input type="password" name="password" class="form-control" placeholder="Enter password">
	          </div>
	
	          		<button type="submit" class="btn-primary"><img src="./images/update.png" width="70px;" height="35px;"></button>         
	        </form>
	      </div>
	  </div>
	  
	  </div>
	
<jsp:include page="Footer.jsp" />
