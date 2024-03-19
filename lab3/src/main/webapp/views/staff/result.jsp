<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/19/2024
  Time: 1:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 3 - Staff</title>
</head>
<body>
<h1>Thông tin nhân viên</h1>
<ul>
    <li>Họ và tên: <b>${bean.fullName}</b></li>
    <li>Hình ảnh: <b>${bean.photo}</b></li>
    <li>Ngày sinh: <b>${bean.birthday}</b></li>
    <li>Giới tính: <b>${bean.gender}</b></li>
    <li>Quốc tịch: <b>${bean.country}</b></li>
    <li>TT hôn nhân: <b>${bean.married}</b></li>
    <li>Sở thích: <b>${bean.hobbies}</b></li>
    <li>Ghi chú: <b>${bean.notes}</b></li>
</ul>
</body>
</html>
