<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/19/2024
  Time: 2:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 3 - Login</title>
</head>
<body>
<h1>Login</h1>
<mark>${message}</mark>
<form action="login" method="post">
    Username: <input name="username" value="${username}"><br>
    Password: <input name="password" type="password" value="${password}"><br>
    <input name="remember" type="checkbox">Remember me?
    <hr>
    <button>Login</button>
</form>
</body>
</html>
