<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*, com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Blog Process Page</title>
</head>
<body>
	<%
		//MultipartRequest m = new MultipartRequest(request,"I:\\Class Work\\Serv\\Blog\\src\\main\\webapp\\BlogImg");
		MultipartRequest m = new MultipartRequest(request,"I:\\Files");
		String bphoto = m.getFilesystemName("bphoto");
	
		String btitle = m.getParameter("btitle");
		String bauthor = m.getParameter("bauthor");
		String bdescription = m.getParameter("bdescription");
		String bcategories = m.getParameter("bcategories");
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root","");
		
		long millis=System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
	
		String sql="insert into blogs(bcategories,btitle,bauthor,bdescription,bphoto,date)values(?,?,?,?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1,bcategories);
		ps.setString(2,btitle);
		ps.setString(3,bauthor);
		ps.setString(4,bdescription);
		ps.setString(5,bphoto);
		ps.setDate(6,date);
		
		int i=ps.executeUpdate();
		
		if(i>0){
			out.println("Data insert successfully");
			response.sendRedirect("ViewBlog.jsp");
		}
		else{
			out.println("Fail");
			response.sendRedirect("AddBlog.jsp");
		}
	%>
</body>
</html>