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
    <title>登录</title>
    <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
    <script src="./js/jquery-3.5.1.js"></script>
    <script>
        function loginsubmit(){
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var pwd_reg=new RegExp("^[0-9a-zA-Z]{6,20}$");
            var email_reg=/[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+/;
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

        $("body").keydown(function () {
            if(event.keyCode = "13"){
                loginsubmit();
            }
        })
    </script>
    <style>
        body{
            background-color:#a6e1ec;
            font-family: 微软雅黑
        }
        .row > h1{
            font-size: 60px;
        }
        label{
            color: black;
        }
        h1{
            color: black;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <br><br><br><br><br><br><br><br><br><br>
        <h1>CSGO「西电竞」</h1><br>
        <form>
            <div class="form-group">
                <label for="password">电子邮箱</label>
                <input type="email" class="form-control" id="email" placeholder="电子邮箱" autocomplete="off">
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
</body>
</html>
