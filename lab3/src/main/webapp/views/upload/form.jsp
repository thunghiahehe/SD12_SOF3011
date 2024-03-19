<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/19/2024
  Time: 12:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 3 - Upload</title>
</head>
<body>
<form action="upload" method="post" enctype="multipart/form-data">
    Hình ảnh: <input type="file" name="photo_file"><br>
    Tài liệu: <input type="file" name="doc_file"><br>
    <hr>
    <button>Upload</button>
</form>
</body>
</html>
