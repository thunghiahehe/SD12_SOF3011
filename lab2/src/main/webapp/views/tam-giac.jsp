<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/18/2024
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 2 - Bài 1</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="card container-sm my-4">
    <h2 class="card-header">TAM GIÁC</h2>
    <br>
    <div class="card-body">
        <form action="tam-giac" method="post">
            <input type="text mb-3" class="form-control" name="a" placeholder="Cạnh a?">
            <br>
            <input type="text mb-3" class="form-control" name="b" placeholder="Cạnh b?">
            <br>
            <input type="text mb-3" class="form-control" name="c" placeholder="Cạnh c?">
            <hr>
            <button formaction="/dien-tich" class="btn btn-secondary">Tính diện tích</button>
            <button formaction="/chu-vi" class="btn btn-secondary">Tính chu vi</button>
        </form>

        <h3 class="my-4">${message}</h3>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
