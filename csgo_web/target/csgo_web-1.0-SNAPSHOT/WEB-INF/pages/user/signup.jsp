<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>赛事报名</title>
    <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
    <script src="../../../js/jquery-3.5.1.js"></script>
    <script>
        function sign(){
            var message = document.getElementById("message").value;
            if(message.length > 20){
                alert("太长啦，得少于20字");
            }else{
                $.ajax({
                    url:"signupsubmit",
                    type:"post",
                    data:{
                        "message":message
                    },
                    success:function (data){
                        if(data){
                            alert("报名成功");
                            document.getElementById("message").value = "";
                        }else{
                            alert("已经报过名啦");
                            document.getElementById("message").value = "";
                        }
                    }
                })
            }
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
                <li class="active"><a href="signup">赛事报名</a></li>
                <li><a href="group">分组查询</a></li>
                <li><a href="result">比赛结果</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="managerlogin">管理员登录</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br>
    <div class="page-header">
        <h1>点下面的按钮就可以报名啦 φ(゜▽゜*)♪</h1>
    </div>
    <p>
        <button type="button" class="btn btn-primary btn-lg" onclick="sign()">报名报名报名报名报名</button>
    </p>
    <textarea class="form-control" rows="1" placeholder="这里可以写简短备注（可重复提交，会覆盖上次备注）,比如问候一下肝了两天网页的蛋挞，或者要和舍友一起rushB" id="message"></textarea>
</div> <!-- /container -->
</body>
</html>
