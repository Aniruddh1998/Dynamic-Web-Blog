<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Blog's</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
<div class="container">
    <center><h2>All Blog's</h2></center>
    <div class="table-responsive">
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Blog Categories</th>
                <th scope="col">Blog Title</th>
                <th scope="col">Post By</th>
                <th scope="col">Blog Description</th>
                <th scope="col">Blog Image</th>
                <th scope="col">Date</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
           	Class.forName("com.mysql.cj.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root",""); 
            Statement st=con.createStatement(); ResultSet rs=st.executeQuery("select * from blogs"); 
                while(rs.next()){ %>
                <tr>
                    <td><%= rs.getInt(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
                    <td><%= rs.getString(5) %></td>
                    <td><img src="../BlogImg/<%= rs.getString(6) %>" alt="Blog Image" width="60px"></td>
                    <td><%= rs.getDate(7) %></td>
                    <td>
                        <a href="delete.jsp?id=<%= rs.getInt(1) %>">Delete</a>
                        <a href="edit.jsp?id=<%= rs.getInt(1) %>">Edit</a>
                    </td>
                </tr>
                <% } %>
        </tbody>
    </table>
    </div>
</div>
</body>
</html>