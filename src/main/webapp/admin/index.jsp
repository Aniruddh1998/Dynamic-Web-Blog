<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <div class="fadeIn first">
                <img src="https://img.icons8.com/fluency/48/000000/gender-neutral-user.png" id="icon" alt="User Icon" />
                <h3>Admin Login</h3>
            </div>
            <form action="LoginProcess.jsp" method="post">
                <input type="email" class="fadeIn third" name="email" placeholder="Email">
                <input type="password" class="fadeIn third" name="password" placeholder="Password">
                <input type="submit" class="fadeIn fourth" value="Login">
            </form>
        </div>
    </div>
</body>
</html>