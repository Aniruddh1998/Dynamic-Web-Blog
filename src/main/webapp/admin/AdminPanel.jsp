<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	HttpSession sess = request.getSession();
	String email = (String)sess.getAttribute("username");//Get login user info
	if(sess.getAttribute("username")==null){ //Check user login or not
		response.sendRedirect("index.jsp");
	}else{
		
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>Admin Panel</title>
	<link rel="stylesheet" href="CSS/AdminPanel.css">
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="AdminPanel.jsp">Admin Panel</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
	<div class="box">
		<h1>Welcome</h1>
		<h1><%= email %></h1>
		<a href="AddBlog.jsp" style="text-decoration: none;"><input type="submit" value="Post Blog"></a>
		<a href="ViewBlog.jsp" style="text-decoration: none;"><input type="submit" value="View Blog"></a>
	</div>
</body>
</html>