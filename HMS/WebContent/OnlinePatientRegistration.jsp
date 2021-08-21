<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Hospital Management</title>
	<link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="header.css" />
	<link rel="stylesheet" type="text/css" href="footer.css" />
	<link rel="stylesheet" type="text/css" href="PatientRegister.css" />
	
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
		
	 	</div>
	 </div>
   	
  <div class="background"> 
  <br><br><br> 	
	<div class="container">
	  <h1><b>Patient Register Form:</b></h1><br><br>
	  <div class="card">
	   <div class="card-body">
	    <form action="InsertOnlinePatientServlet" method="post">
	
	     <div class="form-group row">
	      <label for="name" class="col-sm-2 col-form-label"><b>Name</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="name" placeholder="Enter name" required="required">
	      </div>
	     </div>
	
	     <div class="form-group row">
	      <label for="address" class="col-sm-2 col-form-label"><b>Address</b></label>
	      <div class="col-sm-7">
	       <textarea class="form-control" name="address" rows="10"  cols="50" placeholder="Enter Address" required="required"></textarea>
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="email" class="col-sm-2 col-form-label"><b>Email</b></label>
	      <div class="col-sm-7">
	       <input type="email" class="form-control" name="email" pattern="[a-zA-Z+-_.]+@[a-z0-9]+\.[a-z]{2,3}" placeholder="Enter Email" required="required">
	      </div>
	     </div>
	
	     <div class="form-group row">
	      <label for="contact" class="col-sm-2 col-form-label"><b>Contact No</b></label>
	      <div class="col-sm-7">
	       <input type="phone" class="form-control" name="contact" pattern="[0-9]{10}" placeholder="Enter Contact Number" required="required">
	      </div>
	     </div>
	     
	     
	      <div class="form-group row">
	      <label for="gender" class="col-sm-2 col-form-label"><b>Gender</b></label>
	      <div class="col-sm-2">
	       <input type="radio" class="form-control" name="gender" checked><b>Male</b>
	       <input type="radio" class="form-control" name="gender"><b>Female</b>
	      </div>
	     </div>
	     
	     
	     <div class=" form-group row">
	      <label for="NIC" class="col-sm-2 col-form-label"><b>NIC</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="NIC" placeholder="Enter NIC" required="required">
	      </div>
	     </div>
	     
	      <div class="form-group row">
	      <label for="dob" class="col-sm-2 col-form-label"><b>Date of Birth</b></label>
	      <div class="col-sm-7">
	       <input type="date" class="form-control" name="dob" placeholder="Enter Date of Birth" required="required">
	      </div>
	     </div>
	     
	     
	     
	     
	     <div class=" form-group row">
	      <label for="userName" class="col-sm-2 col-form-label"><b>User Name</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="username" placeholder="Enter username" required="required">
	      </div>
	     </div>
	     
	     
	     <div class="form-group row">
	      <label for="password" class="col-sm-2 col-form-label"><b>Password</b></label>
	      <div class="col-sm-7">
	       <input type="password" class="form-control" name="password" placeholder="Enter Password" required="required">
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="hobby" class="col-sm-2 col-form-label"><b>What is your hobby?</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="hobby" placeholder="Enter hobby" required="required">
	      </div>
	     </div>
	     
	     <button type="submit" class="btn-primary"><img alt="submit" src="./images/submit.jpg" width="70px;" height="35px;"></button>
	    </form>
	   </div>
	  </div>
	 </div>
	 <br><br><br> 

    <jsp:include page="Footer.jsp" />