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
<form action="staff" method="post" enctype="multipart/form-data">
    Họ và tên: <input name="fullName"><br>
    Hình ảnh: <input name="photo_file" type="file"><br>
    Ngày sinh: <input name="birthday"><br>
    Quốc tịch:
    <select name="country">
        <option value="VN">Việt Nam</option>
        <option value="US">United States</option>
    </select><br>
    Giới tính:
    <input name="gender" type="radio" value="true">Nam
    <input name="gender" type="radio" value="false">Nữ<br>
    TT hôn nhân:
    <input name="married" type="checkbox">Đã có gia đình?<br>
    Sở thích:
    <input name="hobbies" type="checkbox" value="R">Đọc sách
    <input name="hobbies" type="checkbox" value="T">Du lịch
    <input name="hobbies" type="checkbox" value="M">Âm nhạc
    <input name="hobbies" type="checkbox" value="O">Khác<br>
    Ghi chú: <textarea name="notes" rows="3" cols="30"></textarea>
    <hr>
    <button>Thêm mới</button>
</form>
</body>
</html>
