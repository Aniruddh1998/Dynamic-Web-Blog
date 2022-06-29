<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Process Page</title>
</head>
<body>
	<%
		HttpSession sess = request.getSession();
		sess.invalidate(); //Session end.
		response.sendRedirect("index.jsp"); //Redirect to login page.
	%>
</body>
</html>