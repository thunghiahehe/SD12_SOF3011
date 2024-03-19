<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/18/2024
  Time: 10:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 2 - Bài 2</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<ul>
    <li>Tên đăng nhập: <b>${param.username}</b></li>
    <li>Mật khẩu: <b>${param.password}</b></li>
    <li>Giới tính: <b>${param.gender}</b></li>
    <li>Tình trạng hôn nhân: <b>${param.married}</b></li>
    <li>Quốc tịch: <b>${param.country}</b></li>
    <li>Ghi chú: <b>${param.notes}</b></li>
    <li>Sở thích: <b>${paramValues.hobbies}</b></li>
</ul>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
