<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
    <script src="../../../js/jquery-3.5.1.js"></script>
    <script>
        function login(){
            var password=document.getElementById("password").value;
            $.ajax({
                url:"managersubmit",
                type:"post",
                contentType: "application/json;charset=UTF-8",
                data:password,
                dateType:"json",
                success:function (data){
                    if(data){
                        alert("口令正确，土豆没牛子！");
                        location.href="/manager.jsp";
                    }else{
                        alert("(；′⌒`) 密码错误...");
                    }
                }
            })
        }
    </script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
            <label class="navbar-brand">XDCSGO</label>
        </div>
        <!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
        <div id="navbar">
            <ul class="nav navbar-nav">
                <li><a href="main">主页</a></li>
                <li><a href="profile">个人信息</a></li>
                <li><a href="signup">赛事报名</a></li>
                <li><a href="result">比赛结果</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="managerlogin">管理员登录</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br><br><br><br><br>
    <form class="form-horizontal">
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">密码：</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="password" placeholder="请输入管理员密码">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" class="btn btn-default" onclick="login()">登录</button>
            </div>
        </div>
    </form>
</div> <!-- /container -->
</body>
</html>
