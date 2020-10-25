<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/21
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <style>
        body{
            background-color:#b3ddd1;
            font-family: 微软雅黑
        }
        .row > h1{
            font-size: 70px;
        }
        label{
            color: black;
        }
        h1{
            color: black;
            text-align: center;
        }
    </style>
    <script src="../../js/jquery-3.5.1.js"></script>
    <script>
        function check(){
            var username=document.getElementById("username").value;
            var password=document.getElementById("password").value;
            var rpassword=document.getElementById("repeatpassword").value;
            var qq=document.getElementById("qq").value;
            var email=document.getElementById("email").value;
            var platform=document.getElementById("platform").value;
            var rank=document.getElementById("rank").value;
            var pwd_reg=new RegExp("^[0-9a-zA-Z]{6,20}$");
            var qq_reg=new RegExp("^[0-9]{5,10}$");
            var email_reg=/(?!.* )[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+/;
            if(username.length>24 || username==""){
                alert("游戏昵称长度过长且不能为空");
            }else if(!pwd_reg.test(password) || password == ""){
                alert("密码应为长度6~20的数字字母且不能为空");
            }else if(rpassword!=password){
                alert("两次密码输入不一致");
            }else if(!qq_reg.test(qq) || qq==""){
                alert("QQ应为5~10位数字且不能为空");
            }else if(!email_reg.test(email) || email==""){
                alert("请输入正确的邮箱且不能为空");
            }else if(platform.length>15 || platform==""){
                alert("平台名过长且不能为空");
            }else if(rank.length>20 || rank==""){
                alert("分数/段位过长且不能为空");
            }else {
                var obj={
                    username:username,
                    password:password,
                    email:email,
                    qq:qq,
                    platform:platform,
                    rank:rank
                }
                var myJson = JSON.stringify(obj);
                $.ajax({
                    url: "registersubmit",
                    type: "post",
                    contentType: "application/json;charset=UTF-8",
                    data:myJson,
                    dataType: "json",
                    success:function (data) {
                        console.log(data);
                        if(data){
                            alert("注册成功");
                            location.href="/index.jsp";
                        }else{
                            alert("该邮箱已注册");
                        }
                    }
                })
            }
        }
    </script>
</head>
<body>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <br><br><br><br><br><br>
            <h1>注册</h1><br><br>
            <form>
                <div class="form-group">
                    <label for="username">游戏昵称</label>
                    <input type="text" class="form-control" id="username" placeholder="游戏昵称" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" class="form-control" id="password" placeholder="密码 6~20位大小写字母与数字" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password">重复密码</label>
                    <input type="password" class="form-control" id="repeatpassword" placeholder="重复密码" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="qq">QQ</label>
                    <input type="text" class="form-control" id="qq" placeholder="QQ" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="email">电子邮箱</label>
                    <input type="email" class="form-control" id="email" placeholder="电子邮箱" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="platform">平台</label>
                    <input type="text" class="form-control" id="platform" placeholder="平台(如5E/B5/完美/官匹)" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="rank">分数/段位</label>
                    <input type="text" class="form-control" id="rank" placeholder="分数/段位" autocomplete="off">
                </div>
                <button type="button" class="btn btn-default" id="register" onclick="check()">注册</button>
                <a type="button" class="btn btn-default" style="float: right;" id="return" href="return">返回</a>
            </form>
        </div>
    </div>
</body>
</html>
