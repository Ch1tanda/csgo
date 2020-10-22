<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选手信息</title>
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
                <li class="active"><a href="">选手信息</a></li>
                <li><a href="">赛事管理</a></li>
                <li><a href="">发布赛事</a></li>
                <li><a href="">创建分组</a></li>
                <li><a href="">添加赛果</a></li>
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
        <h2>报名选手信息</h2>
    </div>
    <table class="table table-striped">
        <tr>
            <td>#</td>
            <td>游戏昵称</td>
            <td>平台</td>
            <td>分数/段位</td>
            <td>电子邮箱</td>
            <td>QQ</td>
            <td>分组</td>
        </tr>
    </table>
</div> <!-- /container -->

</body>
</html>
