<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/18/2024
  Time: 10:54 PM
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
<div class="card container-sm my-4">
    <h2 class="card-header">Đăng kí</h2>
    <br>
    <div class="card-body">
        <form action="dang-ky" method="post">
            <div class="mb-3">
                <label class="form-label">Tên đăng nhập</label>
                <input type="text" class="form-control" placeholder="" name="username">
            </div>
            <div class="mb-3">
                <label for="inputPassword5" class="form-label">Mật khẩu</label>
                <input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock"
                       name="password">
            </div>
            <div class="mb-3">
                <label for="inputPassword5" class="form-label">Giới tính</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" value="true">
                    <label class="form-check-label">
                        Nam
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" value="false">
                    <label class="form-check-label">
                        Nữ
                    </label>
                </div>
            </div>

            <div class="mb-3">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" name="married">
                    <label class="form-check-label" for="defaultCheck1">
                        Đã có gia đình?
                    </label>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Quốc tịch</label>
                <select class="form-select" aria-label="Default select example" name="country">
                    <option value="VN">Việt Nam</option>
                    <option value="US">United States</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Ghi chú</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="notes"></textarea>
            </div>

            <div class="mb-3">
                <label class="form-label">Sở thích</label>
                <input name="hobbies" type="checkbox" value="R">Đọc sách
                <input name="hobbies" type="checkbox" value="T">Du lịch
                <input name="hobbies" type="checkbox" value="M">Âm nhạc
                <input name="hobbies" type="checkbox" value="O">Khác
            </div>
            <hr>
            <button class="btn btn-primary my-3">Đăng ký</button>
        </form>

    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
