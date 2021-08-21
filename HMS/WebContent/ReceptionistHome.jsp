
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  
	<title>Hospital Management</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="header.css" />
	<link rel="stylesheet" type="text/css" href="footer.css" />
	<link rel="stylesheet" type="text/css" href="styles.css" />
	<link rel="stylesheet" type="text/css" href="Receptionist.css" />
	
</head>
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
			<div class="container">
				<div class="item">
					<a href="logout.jsp">
						<button class="btn">
							<img alt="login" src="./images/logout.jpg" class="btnimage">
						</button>
					</a>
				</div>
			</div>
			
	 	</div>
	 </div>
	 <div class="background">
	 <br><br><br>
		<h2><b>Welcome to Receptionist Home Page</b></h2><br><br><br><br><br><br>
		
			<center>
		    	<a href="PhysicalPatientRegistration.jsp">
			    	<img src="./images/recep.jpg" alt="patientregister" class="image2"><br>
			    	<h3 class="link">Patient Registration</h3>
		    	</a>
			</center>
	
<jsp:include page="Footer.jsp" />

   