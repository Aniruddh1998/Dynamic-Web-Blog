<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog Delete Page</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root","");
	
		String sql = "delete from blogs where id=?";
	
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1,id);
		
		ps.executeUpdate();
		
		response.sendRedirect("ViewBlog.jsp");
	
	%>
</body>
</html>