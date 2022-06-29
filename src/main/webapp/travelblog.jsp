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
	<title>Blog page</title>
	<link rel="stylesheet" href="css/indexcard.css">
	<style type="text/css">
	body{
		background: #34495e;
	}
	</style>
</head>
<body>
	<nav class="navbar navbar-inverse bg-dark">
		<div class="container-fluid">
		<ul class="nav navbar-nav">
    		<div class="navbar-header">
    		<li class="active">
    	  		<a class="navbar-brand" href="index.jsp">Blogs</a>
    	  	</li>
    		</div>
    		<li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="index.jsp">Choose Blog Categories <span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="foodblog.jsp">Food Blogs</a></li>
          			<li><a href="travelblog.jsp">Travel Blogs</a></li>
          			<li><a href="photographyblog.jsp">Photography Blogs</a></li>
        		</ul>
      		</li>
      	</ul>
    		<ul class="nav navbar-nav navbar-right">
    			<li><a href="ContactUs.jsp"><span class="glyphicon glyphicon-envelope"></span> <span>Contact Us</span></a></li>
  			</ul>
  		</div>	
	</nav>
	<div class="container">
		<div class="row">
				<%
					String bcat = "travel";
 					Class.forName("com.mysql.cj.jdbc.Driver"); 
    				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root",""); 
    				Statement st=con.createStatement(); 
    				ResultSet rs=st.executeQuery("select * from blogs where bcategories='"+bcat+ "'"); 
    				while(rs.next()){
				%>
			<div class="col-sm-4">
    			<div class="card-deck">
        			<div class="card">
           				<img src="BlogImg/<%= rs.getString(6) %>" class="card-img-top" alt="Blog Image">
           				<div class="card-body text-center">
               				<h5 class="card-title"><strong>Blog Tile:</strong><br> <%= rs.getString(3) %></h5>
               				<p class="card-text"><strong>Post By:</strong><br> <%= rs.getString(4) %></p>
               				<a href="blogdetail.jsp?id=<%= rs.getInt(1) %>" class="btn btn-primary">View details</a>
           				</div>
           				<div class="card-footer">
               				<small class="text-muted"><p>Last updated on <%= rs.getDate(7) %></p></small>
           				</div>
        			</div>
    			</div>
    		</div>
   			<% } %>
   		</div>
   </div>
</body>
</html>