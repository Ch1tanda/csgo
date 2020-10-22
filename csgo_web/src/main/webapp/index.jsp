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
    <script>
        function loginsubmit(){
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var pwd_reg=new RegExp("^[0-9a-zA-Z]{6,20}$");
            var email_reg=new RegExp("^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$");
            var obj ={email:email,password:password};
            var myJson = JSON.stringify(obj);
            if(!email_reg.test(email) || email==""){
                alert("邮箱不正确且不能为空")
            }else if(!pwd_reg.test(password) || password==""){
                alert("密码格式不正确且不能为空")
            }else{
                $.ajax({
                    url:"login/loginsubmit",
                    type:"post",
                    contentType: "application/json;charset=UTF-8",
                    data:myJson,
                    dataType: "json",
                    success:function (data) {
                        if(data){
                            alert("登录成功");
                            location.href="/user/main";
                        }else{
                            alert("账户不存在或密码错误");
                        }
                    }
                })
            }
        }
    </script>
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
                <button type="button" class="btn btn-default" id="login" onclick="loginsubmit()">登录</button>
                <a class="btn btn-default" style="float: right;" href="login/register">注册</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>
