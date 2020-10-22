<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>参赛选手信息</title>
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
                <li><a href="manager">管理说明</a></li>
                <li class="active"><a href="userinfo">选手信息</a></li>
                <li><a href="group">创建分组</a></li>
                <li><a href="result">添加赛果</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href=""></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br>
    <div class="page-header">
        <h2>已报名选手信息</h2>
    </div>
    <table class="table table-striped">
        <thead>
            <tr>
                <td>id</td>
                <td>游戏昵称</td>
                <td>平台</td>
                <td>分数/段位</td>
                <td>电子邮箱</td>
                <td>QQ</td>
                <td>分组</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${signed}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.username}</td>
                    <td>${item.platform}</td>
                    <td>${item.rank}</td>
                    <td>${item.email}</td>
                    <td>${item.qq}</td>
                    <c:if test="${item.groupid!=null}">
                        <td>${item.groupid}</td>
                    </c:if>
                    <c:if test="${item.groupid==null}">
                        <td>暂无分组</td>
                    </c:if>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div> <!-- /container -->

</body>
</html>
