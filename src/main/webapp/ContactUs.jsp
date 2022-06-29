<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>Contact Us</title>
	<link rel="stylesheet" href="css/ContactUs.css">
</head>
<body>
	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
   		 	<div class="navbar-header">
     			<a class="navbar-brand" href="index.jsp">Home</a>
    		</div>
    		<ul class="nav navbar-nav navbar-right">
    	  		<li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> <span style="color:red;">Back</span></a></li>
    		</ul>
  		</div>
	</nav><br>
	<center class="cont"><span><h1>Contact Us</h1></span></center><br>
	<div class="row container">
		<div class="col-sm-6">
			<img src="webimg\mail-1007.png"/>
		</div>
		<div class="col-sm-1"></div>
			<div class="container reveal col-sm-5">
			<br>
            	<form class="myform">
            		<input type="text" class="form-control" id="FName" placeholder="First Name*"><br>
                	<input type="email" class="form-control" id="email" placeholder="email@example.com*"><br>
                	<input type="text" class="form-control" id="subject" placeholder="Subject*"><br>
                	<textarea cols="30" rows="4" class="form-control" id="message" placeholder="Message*"></textarea><br>
                	<center>
	            		<button id="submit" type="button" class="btn cta"><img style="width: 20%;" src="https://img.icons8.com/fluency/48/000000/filled-sent.png" /><strong>Submit</strong></button> 
               		</center><br>
        		</form>
        	</div>
	</div>
</body>
</html>