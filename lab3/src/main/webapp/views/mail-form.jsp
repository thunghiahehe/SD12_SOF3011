<%--
  Created by IntelliJ IDEA.
  User: maymimim
  Date: 3/19/2024
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
</head>

<body>
<header>
    <!-- place navbar here -->
</header>
<main>
    <div class="container-sm my-5">
        <div class="card">
            <h2 class="card-header">Send mail</h2>
            <div class="card-body">
                <form action="/mail/send" method="post">
                    <div class="mb-3">
                        <label class="form-label">From: </label>
                        <input type="text" name="from" class="form-control" placeholder="Enter email"
                               value="maymimim.1202@gmail.com"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">To: </label>
                        <input type="text" name="to" class="form-control" placeholder="Enter email"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Subject: </label>
                        <input type="text" name="subject" class="form-control" placeholder="Enter subject"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Content: </label>
                        <textarea name="content" class="form-control" rows="3"
                                  placeholder="Enter content"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send</button>
                    <button type="reset" class="btn btn-light">Cancel</button>
  
                    <h6 class="my-3 text text-danger">${message}</h6>
                </form>
            </div>
        </div>
    </div>
</main>
<footer>
    <!-- place footer here -->
</footer>
<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>