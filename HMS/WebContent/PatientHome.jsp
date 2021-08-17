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
	<link rel="stylesheet" type="text/css" href="PatientHome.css" />
	
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
				<div class="item">
					<img alt="patient" src="./images/patient.png" class="image">
				</div>
			</div>
			
	 	</div>
	 </div>
	 <div class="background">
	 <br><br><br>
		<h2><b>Welcome to Patient Home Page</b></h2>
		
		<div class="container-fluid">
		    <div class="row">
		    <div class="col-sm-4">
		    	<a href="#">
			    	<img src="./images/channel.png" alt="channeling" class="image1">
			    	<h3 class="link">Channeling</h3>
		    	</a>
		    </div>
		    <div class="col-sm-4">
		    	<a href="#">
			    	<img src="./images/lab.jpg" alt="laboratory" class="image1">
			    	<h3 class="link">Laboratory</h3>
		    	</a>
		    </div>
		    <div class="col-sm-4">
		    	<a href="#">
			    	<img src="./images/ambulance1.jpg" alt="mobileservice" class="image1">
			    	<h3 class="link">Mobile Service</h3>
		    	</a>
		    </div>
		  </div>
		
		
	
		    <div class="row">
		    <div class="col-sm-4">
		    	<a href="#">
			    	<img src="./images/medicalcetificate.jpg" alt="medical" class="image2">
			    	<h3 class="link">Medical Report</h3>
		    	</a>
		    </div>
		    <div class="col-sm-4">
		    	<a href="#">
			    	<img src="./images/account.jpg" alt="account" class="image2">
			    	<h3 class="link">Account</h3>
		    	</a>
		    </div>
		    <div class="col-sm-4">
		    	<a href="Feedback.css">
			    	<img src="./images/feedback.png" alt="feedback" class="image2">
			    	<h3 class="link">Feedback</h3>
		    	</a>
		    </div>
		  </div>
		  <br><br><br>
		 </div>
		

	
<jsp:include page="Footer.jsp" />