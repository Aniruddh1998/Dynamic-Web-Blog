<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*, com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Login Page</title>
    <link rel="stylesheet" href="CSS/AdminLogin.css">
</head>

<body>
    <nav class="navbar navbar-inverse">
  		<div class="container-fluid">
    		<div class="navbar-header">
      			<a class="navbar-brand" href="AdminPanel.jsp">Home</a>
    		</div>
    		<ul class="nav navbar-nav navbar-right">
      			<li><a href="AdminPanel.jsp"><span class="glyphicon glyphicon-log-in"></span> Back</a></li>
    		</ul>
  		</div>
	</nav>
    <center><h2 style="color:white">Update Blog</h2></center>
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <%
			    int id = Integer.parseInt(request.getParameter("id"));
			    Class.forName("com.mysql.cj.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root","");
		
		    	Statement st= con.createStatement();
		
			    ResultSet rs = st.executeQuery("select * from blogs where id="+id);
		
	    		while(rs.next()){
		    %>
            <form action="update.jsp" method="post" enctype="multipart/form-data">

                <input type="hidden" name="id" value="<%= rs.getInt(1) %>" class="fadeIn third"><br><br>
                <p>Blog Title</p>
                <select name="bcategories">
					<option value="<%= rs.getString(2) %>"><%= rs.getString(2) %></option>
					<option value="food">Food blogs</option>
					<option value="travel">Travel blogs</option>
					<option value="photography">Photography blogs</option>
				</select>
                <input type="text" name="btitle" value="<%= rs.getString(3) %>" class="fadeIn third"><br><br>
                <p>Post By</p>
                <input type="text" name="bauthor" value="<%= rs.getString(4) %>" class="fadeIn third"><br><br>
                <p>Blog Description</p>
                <input type="text" name="bdescription" value="<%= rs.getString(5) %>" class="fadeIn third"><br><br>
                <input type="file" name="bphoto" value="<%= rs.getString(6) %>" class="fadeIn third"><br><br>
                <input type="hidden" name="date" value="<%= rs.getDate(7) %>" class="fadeIn third"><br><br>
                
                <input type="submit" value="Update" class="fadeIn fourth">
            </form>
            <% } %>
        </div>
    </div>
</body>
</html>