<%--
  Created by IntelliJ IDEA.
  User: 夭暝
  Date: 2020/10/10
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
    <script src="./js/jquery-3.5.1.js"></script>
    <style>
        .row > h1{
            font-size: 60px;
        }
        label{
            color: thistle;
        }
        h1{
            color: thistle;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container-fluid" style="height: 969px;background-image: url(./images/login.jpg);" >
    <div class="row">
        <div class="col-md-2 col-md-offset-5">
            <br><br><br><br><br><br><br><br><br><br><br>
            <form>
                <div class="form-group">
                    <label for="password" style="color: thistle;">电子邮箱</label>
                    <input type="email" class="form-control" id="email" placeholder="电子邮箱">
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" class="form-control" id="password" placeholder="密码">
                </div>
                <button type="submit" class="btn btn-default">登录</button>
                <a class="btn btn-default" style="float: right;" href="login/register">注册</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>
