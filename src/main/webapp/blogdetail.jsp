<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>Blog Details</title>
	<link rel="stylesheet" href="css/blogdetail.css">
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
	</nav>
    <%
    	int id = Integer.parseInt(request.getParameter("id"));
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root","");

    	Statement st= con.createStatement();

    	ResultSet rs = st.executeQuery("select * from blogs where id="+id);
    
   		while(rs.next()){
	%>
		<div class="card mb-3 container">
    		<img src="BlogImg/<%= rs.getString(6) %>" class="card-img-top" alt="Blog Image">
    		<div class="card-body">
        		<h5 class="card-title"><center><h2><%= rs.getString(3) %></h2></center></h5>
        		<p class="card-text"><strong>Post By: </strong><%= rs.getString(4) %><br></p>
        		<center><p class="card-text wid"><%= rs.getString(5) %></p></center>
        		<p class="card-text"><small class="text-muted">Last updated on <%= rs.getDate(7) %></small></p>
    		</div>
		</div>
	<% } %>
</body>
</html>