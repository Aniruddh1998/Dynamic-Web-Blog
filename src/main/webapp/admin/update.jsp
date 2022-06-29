<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*, com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Process</title>
</head>
<body>
	<%	
		MultipartRequest m = new MultipartRequest(request,"I:\\Class Work\\Serv\\Blog\\src\\main\\webapp\\BlogImg");
		//MultipartRequest m = new MultipartRequest(request,"I:\\Files");
		String img = m.getFilesystemName("bphoto");
	
		int id = Integer.parseInt(m.getParameter("id"));
		String btitle = m.getParameter("btitle");
		String bauthor = m.getParameter("bauthor");
		String bdescription = m.getParameter("bdescription");
		String bcategories = m.getParameter("bcategories");

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root","");
		
		long millis=System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		
		if(img != null){
			
			String sql="update blogs set bcategories=?, btitle=?, bauthor=?, bdescription=?, date=?,bphoto=? where id=?";
		
			PreparedStatement ps = con.prepareStatement(sql);
		
			ps.setString(1,bcategories);
			ps.setString(2,btitle);
			ps.setString(3,bauthor);
			ps.setString(4,bdescription);
			ps.setDate(5,date);
			ps.setString(6,img);
			ps.setInt(7,id);
		
			ps.executeUpdate();

			response.sendRedirect("ViewBlog.jsp");
		}
		else{
			
			String sql="update blogs set bcategories=?, btitle=?, bauthor=?, bdescription=?, date=? where id=?";
				
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1,bcategories);
			ps.setString(2,btitle);
			ps.setString(3,bauthor);
			ps.setString(4,bdescription);
			ps.setDate(5,date);
			ps.setInt(6,id);
			
			ps.executeUpdate();

			response.sendRedirect("ViewBlog.jsp");
		}
    %>
</body>
</html>