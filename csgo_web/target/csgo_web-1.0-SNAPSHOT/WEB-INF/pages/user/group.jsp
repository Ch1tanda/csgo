<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/23
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>分组信息</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
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
                <li  class="active"><a href="group">分组查询</a></li>
                <li><a href="result">比赛结果</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="managerlogin">管理员登录</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br><br>
    <div class="page-header">
        <h2>分组信息</h2>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <td>#</td>
            <td>队伍名称</td>
            <td>队员1</td>
            <td>队员2</td>
            <td>队员3</td>
            <td>队员4</td>
            <td>队员5</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${groupMessage}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.groupname}</td>
                <td>${item.username1}</td>
                <td>${item.username2}</td>
                <td>${item.username3}</td>
                <td>${item.username4}</td>
                <td>${item.username5}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div> <!-- /container -->

</body>
</html>