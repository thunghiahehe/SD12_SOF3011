<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/19/2024
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 3 - Upload</title>
</head>
<body>
<h2>1. Hình: ${img.name}</h2>
<img src="/files/${img.name}" height="100">
<h2>2. Tài liệu: ${doc.name}</h2>
<a href="/files/${doc.name}">Tải về</a>
</body>
</html>
