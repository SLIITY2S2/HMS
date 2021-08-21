

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="b" uri="http://java.sun.com/jstl/core_rt" %>


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
	<link rel="stylesheet" type="text/css" href="Payment.css" />

	<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="js/app-ajax.js" type="text/javascript"></script>

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

	   

	    <form action="PaymentServlet" method="post" id="myForm">

	
	     <div class="form-group row">
	      <label for="appno" class="col-sm-2 col-form-label"><b>Appointment No</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="appno" readonly="readonly">
	      </div>
	     </div>
	
	     <div class="form-group row">

	      <label for="cardno" class="col-sm-2 col-form-label"><b>Card Number</b></label>
	      <div class="col-sm-7">
	      <input type="text" class="form-control" name="cardno" required="required">

	      <label for="cardno" class="col-sm-2 col-form-label"><b>Card No</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="cardno" required="required">

	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="holder" class="col-sm-2 col-form-label"><b>Name on Card</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="holder" required="required">
	      </div>
	     </div>
	
	     <div class="form-group row">
	      <label for="expire" class="col-sm-2 col-form-label"><b>Expiration</b></label>
	      <div class="col-sm-7">
	       <input type="date" class="form-control" name="expire" required="required">
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="bank" class="col-sm-2 col-form-label"><b>Bank Name</b></label>

	      <div class="col-sm-2">
	       <input type="text" class="form-control" name="bank" required="required">
	       

	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="bank" required="required">

	      </div>
	     </div>
	     
	      <div class="form-group row">
	      <label for="type" class="col-sm-2 col-form-label"><b>Type</b></label>
	      <div class="col-sm-2">
	       <input type="radio" class="form-control" name="type" checked><b>Credit</b>
	       <input type="radio" class="form-control" name="type"><b>Debit</b>
	      </div>
	     </div>

	      <div class="form-group row">
	      <label for="service" class="col-sm-2 col-form-label"><b>Service Type</b></label>
	      <div class="col-sm-7">
	       <select name="service" required="required">
	       		<option value="app">Appointment</option>
	       		<option value="lab">Laboratory</option>
	       		<option value="discharge">Patient Discharge</option>
	       </select>
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="cdate" class="col-sm-2 col-form-label"><b>Current Date</b></label>
	      <div class="col-sm-7">
	     	<input type="date" class="form-control" name="cdate" value="<%=new Date(session.getCreationTime()) %>" required="required">
	      </div>
	     </div>
	     
	     <p>Save card <br> I acknowledge that my card information is saved in account for </p>
	     
	     <div class="form-group row">
	      <label for="total" class="col-sm-2 col-form-label"><b>Total Amount Rs.</b></label>
	      <div class="col-sm-2">
	       <input type="text" class="form-control" name="total" readonly="readonly">
	       
	      </div>
	     </div>
	  	<div class="row1">
				
					<button type="submit" class="btn">
						<img alt="pay" src="./images/pay.jpg" class="btnimage">
					</button>
			
			</div>	  
	  </form>
	   </div>
	  </div>
	 </div>

	     <div class=" form-group row">
	      <label for="service" class="col-sm-2 col-form-label"><b>Service Type</b></label>
	      <div class="col-sm-7">
	      <select name="service" required="required">
	      	<option value="app">Online Appointment</option>
	      	<option value="lab">Laboratory service</option> 
	      	<option value="discharge">Discharge</option>
	      </select>
	      </div>
	     </div>
	     
	     
	     <div class=" form-group row">
	      <label for="currentdate" class="col-sm-2 col-form-label"><b>Current Date</b></label>
	      <div class="col-sm-7">
	       <input type="date" class="form-control" name="currentdate" required="required">
	      </div>
	     </div>
	     
	    	<p>Save card.</p>
	    	<p>I acknowledge that my card information is saved in account for</p>
	     
	     <div class="form-group row">
	      <label for="total" class="col-sm-2 col-form-label"><b>Total amount &nbsp; &nbsp;&nbsp;&nbsp;Rs.</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="total" readonly="readonly">
	      </div>
	     </div>
	     
	     <button type="submit" class="btn-primary"><img alt="submit" src="./images/pay.jpg" width="100px;" height="50px;"></button>
	   	 <button type="reset" class="btn-primary"><img alt="submit" src="./images/reset.jpg" width="100px;" height="50px;" onClick = "fun()"></button>
	    </form>
	   </div>
	  </div>
	 </div>
	 
	  <script>
	  function fun(){  
		   document.getElementById("myForm").reset();  
		 }
	 </script>
	 

	 <br><br><br> 

    <jsp:include page="Footer.jsp" />