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
	<link rel="stylesheet" type="text/css" href="Consulting.css" />
	
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
	  
	  <div class="card">
	   <div class="card-body">
	   		<h1><b><center>Consulting</center></b></h1><br><br>
	    <form action="<%=request.getContextPath()%>/#" method="post">
	
			
	     <div class="form-group row">
	      <label for="ptype" class="col-sm-2 col-form-label"><b>Patient Type</b></label>
	      <div class="col-sm-7">
	       	<select required="required" name="ptype">
	       		<option value="onlinepatient">Online Patient</option>
	       		<option value="outpatient">OutPatient</option>
	       	</select>
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="pid" class="col-sm-2 col-form-label"><b>Patient Id</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="pid" readonly="readonly">
	      </div>
	     </div>
	
	     <div class="form-group row">
	      <label for="name" class="col-sm-2 col-form-label"><b>Patient Name</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="name" required="required">
	      </div>
	     </div>
	
	     <div class="form-group row">
	      <label for="spec" class="col-sm-2 col-form-label"><b>Specialization</b></label>
	      <div class="col-sm-7">
	          <input type="search" id="site-search" class="form-control" aria-label="Search" placeholder="Enter specialization" name="spec" required="required">
  			  
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="doctor" class="col-sm-2 col-form-label"><b>Doctor</b></label>
	      <div class="col-sm-7">
	       	<select required="required" name="doctor">
	       		<option></option>	       		
	       	</select>
	      </div>
	     </div>
	
	     <div class="form-group row">
	      <label for="date" class="col-sm-2 col-form-label"><b>Date</b></label>
	      <div class="col-sm-7">
	       <input type="date" class="form-control" name="date" required="required">
	      </div>
	     </div>
	    	     
	     <button type="submit" class="btn-primary"><img alt="submit" src="./images/submit.jpg" width="70px;" height="35px;"></button>
	    </form>
	   </div>
	  </div>
	 </div>
	 <br><br><br> 

    <jsp:include page="Footer.jsp" />