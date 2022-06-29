<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	HttpSession sess = request.getSession();
	if(sess.getAttribute("username")==null){ //Check user login or not
		response.sendRedirect("index.jsp");
	}else{
		
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>Add New Blog's</title>
	<style type="text/css">
	form{
		margin-top:2%;
	}
	</style>
	<link rel="stylesheet" href="CSS/AdminLogin.css">
</head>
<body>
<nav class="navbar navbar-inverse bg-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="AdminPanel.jsp">Home</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="AdminPanel.jsp"><span class="glyphicon glyphicon-log-in"></span> Back</a></li>
    </ul>
  </div>
</nav>
    <center><h1 style="color:white">Add New</h1></center> 
    <center>
		<form class="box" action="AddBlogProcess.jsp" method="post" enctype="multipart/form-data">
			<select name="bcategories">
				<option>choose Blog Categories</option>
				<option value="food">Food blogs</option>
				<option value="travel">Travel blogs</option>
				<option value="photography">Photography blogs</option>
			</select>
			<input type="text" placeholder="Enter Blog Title" name="btitle">
          	<input type="text" placeholder="Blog Post By" name="bauthor">
          	<input type="text" placeholder="Enter Blog description" name="bdescription">
          	<input type="file" name="bphoto">
          	
          	<input type="submit" value="Add blog">
		</form>
	</center>
</body>
</html>