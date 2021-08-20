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
	<link rel="stylesheet" type="text/css" href="Receipt.css" />

	
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
	    <form action="<%=request.getContextPath()%>/DownloadServlet"  method="post">
	
	     <div class="form-group row">
	      <label for="refno" class="col-sm-2 col-form-label"><b>Reference No</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="refno" readonly="readonly">
	      </div>
	     </div>
	
	     <div class="form-group row">
	      <label for="cardno" class="col-sm-2 col-form-label"><b>Card No</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="cardno" readonly="readonly">
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="holder" class="col-sm-2 col-form-label"><b>Card Holder Name</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="holder" readonly="readonly">
	      </div>
	     </div>
	
	   
	     <div class="form-group row">
	      <label for="bank" class="col-sm-2 col-form-label"><b>Bank Name</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="bank" readonly="readonly">
	      </div>
	     </div>
	     
	      <div class="form-group row">
	      <label for="type" class="col-sm-2 col-form-label"><b>Type</b></label>
	      <div class="col-sm-2">
	       <input type="text" class="form-control" name="type" readonly="readonly">	       
	      </div>
	     </div>
	     
	     <div class="form-group row">
	      <label for="total" class="col-sm-2 col-form-label"><b>Total amount to pay Rs.</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="total" readonly="readonly">
	      </div>
	     </div>
	     
	     <p>I hereby confirm details are correct</p>
	     
		    
		  <aui:button type="button" id="viewReportBtn" value="View Report" />
		     
	     
	    </form>	    
	   </div>
	  </div>
	 </div>
	
	 <br><br><br> 
	
    <jsp:include page="Footer.jsp" />