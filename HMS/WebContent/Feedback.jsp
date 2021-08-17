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

	  <a href="#"><img alt="close" src="./images/close.jpg" width="60px" height="60px"></a>
    	<h1><b>Give your feedback for efficient and effective service</b></h1><br><br>
	  <div class="card">
	   <div class="card-body">
	   	
	    <form action="<%=request.getContextPath()%>/#" method="post">
		     <div class="form-group row">
	      <label for="pid" class="col-sm-2 col-form-label"><b>Patient Id</b></label>
	      <div class="col-sm-7">
	       <input type="text" class="form-control" name="pid" readonly="readonly">
	      </div>
	     </div>
	
	     
	     <div class="form-group row">
	      <label for="suggestion" class="col-sm-2 col-form-label"><b>Suggestions</b></label>
	      <div class="col-sm-7">
	       <textarea class="form-control" name="suggestion" rows="5"  cols="50"></textarea>
	      </div>
	     </div>
		
	     <div class="form-group row">
	      <label for="complaints" class="col-sm-2 col-form-label"><b>Complaints</b></label>
	      <div class="col-sm-7">
	       <textarea class="form-control" name="complaints" rows="5"  cols="50"></textarea>
	      </div>
	     </div>
	    	<button type="submit" class="btn-primary"><img alt="submit" src="./images/submit.jpg" width="70px;" height="35px;"></button>
	    </form>
	   </div>
	  </div>
	 </div>
	 <br><br><br> 

    <jsp:include page="Footer.jsp" />