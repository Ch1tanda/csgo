<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>首页</title>
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
                <li class="active"><a href="main">主页</a></li>
                <li><a href="profile">个人信息</a></li>
                <li><a href="signup">赛事报名</a></li>
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
        <h1>2020年秋季第三届萌新赛开始筹备啦！${user.username}</h1>
    </div>
</div> <!-- /container -->

</body>
</html>
