<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>个人信息</title>
    <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
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
                <li class="active"><a href="profile">个人信息</a></li>
                <li><a href="signup">赛事报名</a></li>
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
        <h1>个人信息界面</h1>
    </div>
    <div class="row">
        <div class="col-md-4"><h2>游戏昵称</h2></div>
        <div class="col-md-8"><h2>${user.username}</h2></div>
    </div>
    <div class="row">
        <div class="col-md-4"><h2>平台</h2></div>
        <div class="col-md-8"><h2>${user.platform}</h2></div>
    </div>
    <div class="row">
        <div class="col-md-4"><h2>分数/段位</h2></div>
        <div class="col-md-8"><h2>${user.rank}</h2></div>
    </div>
    <div class="row">
        <div class="col-md-4"><h2>邮箱</h2></div>
        <div class="col-md-8"><h2>${user.email}</h2></div>
    </div>
    <div class="row">
        <div class="col-md-4"><h2>QQ</h2></div>
        <div class="col-md-8"><h2>${user.qq}</h2></div>
    </div>
    <div class="row">
        <div class="col-md-4"><h2>所属队伍:</h2></div>
        <div class="col-md-8"><h2>${user.groupid}</h2></div>
    </div>
    <div class="row">
        <div class="col-md-4"><h2>是否参赛:</h2></div>
        <div class="col-md-8"><h2>${user.signed}</h2></div>
    </div>
</div> <!-- /container -->

</body>
</html>
