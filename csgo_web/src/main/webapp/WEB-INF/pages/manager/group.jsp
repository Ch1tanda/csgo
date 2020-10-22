<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加分组</title>
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
                <li><a href="userinfo">选手信息</a></li>
                <li class="active"><a href="group">创建分组</a></li>
                <li><a href="addresult">添加赛果</a></li>
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
        <h2>这里是手动分组页面</h2>
    </div>
    <form>
        <div class="form-group">
            <label for="group">组名</label>
            <input type="text" class="form-control" id="group" placeholder="组名">
        </div>
        <div class="form-group">
            <label for="id1">选手ID1</label>
            <input type="text" class="form-control" id="id1" placeholder="ID1">
        </div>
        <div class="form-group">
            <label for="id2">选手ID2</label>
            <input type="text" class="form-control" id="id2" placeholder="ID2">
        </div>
        <div class="form-group">
            <label for="id3">选手ID3</label>
            <input type="text" class="form-control" id="id3" placeholder="ID3">
        </div>
        <div class="form-group">
            <label for="id4">选手ID4</label>
            <input type="text" class="form-control" id="id4" placeholder="ID4">
        </div>
        <div class="form-group">
            <label for="id5">选手ID5</label>
            <input type="text" class="form-control" id="id5" placeholder="ID5">
        </div>
        <button type="submit" class="btn btn-default">分组确认</button>
    </form>
</div> <!-- /container -->

</body>
</html>
