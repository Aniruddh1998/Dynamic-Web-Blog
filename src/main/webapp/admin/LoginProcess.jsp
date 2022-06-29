<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Process Page</title>
</head>
<body>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogdb","root","");

		Statement st= con.createStatement();
	
		String sql = "select * from admin where email=? and password=?";
	
		PreparedStatement ps = con.prepareStatement(sql);
	
 		ps.setString(1,email);
 		ps.setString(2,password);
 	
 		ResultSet rs = ps.executeQuery();
	
		if(rs.next()){
			HttpSession sess = request.getSession();
			sess.setAttribute("username",email); //Session start
		
			response.sendRedirect("AdminPanel.jsp");
		}
		else{ 
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>