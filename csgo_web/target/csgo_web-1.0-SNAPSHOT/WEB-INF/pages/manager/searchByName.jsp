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
    <script src="../../../js/jquery-3.5.1.js"></script>
    <script>
        function submit(){
            var groupname = document.getElementById("groupname").value;
            var id1 = document.getElementById("id1").value;
            var id2 = document.getElementById("id2").value;
            var id3 = document.getElementById("id3").value;
            var id4 = document.getElementById("id4").value;
            var id5 = document.getElementById("id5").value;
            var reg = new RegExp("^[0-9]*$");
            if(id1 == "" || id2 == "" || id3 =="" || id4 ==""|| id5 == "" || groupname==""){
                alert("请输全信息");
            }else if(!reg.test(id1) || !reg.test(id2) || !reg.test(id3) || !reg.test(id4) || !reg.test(id5)){
                alert("id必须是纯数字");
            }else{
                var obj = {
                    groupname:groupname,
                    id1:id1,
                    id2:id2,
                    id3:id3,
                    id4:id4,
                    id5:id5,
                };
                var myJson = JSON.stringify(obj);
                $.ajax({
                    url:"creategroup",
                    type:"post",
                    contentType: "application/json;charset=UTF-8",
                    data:myJson,
                    dataType: "json",
                    success:function (data) {
                        if(data){
                            alert("分组创建成功");
                            location.reload();
                        }else{
                            alert("分组创建失败,可能选手不存在或者选手已有分组")
                        }
                    }
                })
            }
        }

        function searchByname() {
            var username = document.getElementById("username").value;
            if(username == ""){
                alert("昵称不能为空");
            }else{
                $.ajax({
                    url:"searchByUsername",
                    tyoe:"post",
                    data: {
                        "username":username
                    },
                    success:function (data) {
                        if(data){
                            location.href="search";
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
                <li><a href="manager">管理说明</a></li>
                <li class="active"><a href="userinfo">选手信息</a></li>
                <li><a href="group">分组信息</a></li>
                <li><a href="result">添加赛果</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="backtouser">返回用户页面</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br><br>
    <h1>手动分组</h1>
    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label for="groupname">组名</label>
                <input type="email" class="form-control" id="groupname" placeholder="组名">
            </div>
        </div>
        <div class="col-md-1">
            <div class="form-group">
                <label for="id1">选手id1</label>
                <input type="email" class="form-control" id="id1" placeholder="id1">
            </div>
        </div>
        <div class="col-md-1">
            <div class="form-group">
                <label for="id2">选手id2</label>
                <input type="email" class="form-control" id="id2" placeholder="id2">
            </div>
        </div>
        <div class="col-md-1">
            <div class="form-group">
                <label for="id3">选手id3</label>
                <input type="email" class="form-control" id="id3" placeholder="id3">
            </div>
        </div>
        <div class="col-md-1">
            <div class="form-group">
                <label for="id4">选手id4</label>
                <input type="email" class="form-control" id="id4" placeholder="id4">
            </div>
        </div>
        <div class="col-md-1">
            <div class="form-group">
                <label for="id5">选手id5</label>
                <input type="email" class="form-control" id="id5" placeholder="id5">
            </div>
        </div>
        <div class="col-md-1">
            <label for="butt1">歪比巴伯</label>
            <button type="button" class="btn btn-info" onclick="submit()" id="butt1">确认提交分组</button>
        </div>
    </div>
    <div class="row">
        <div class="page-header">
            <h2>已报名选手信息</h2>
        </div>
        <div class="container">
            <div class="col-md-2"><input class="form-control" placeholder="昵称" id="username"></div>
            <div class="col-md-1"><button class="btn btn-info" onclick="searchByname()">昵称查询</button></div>
            <div class="col-md-1"><a class="btn btn-info" href="userinfo">查看所有</a></div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <td>id</td>
                <td>游戏昵称</td>
                <td>平台</td>
                <td>分数/段位</td>
                <td>电子邮箱</td>
                <td>QQ</td>
                <td>备注</td>
                <td>分组</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${signed}" var="item">
                    <c:if test="${item.groupid == null}">
                        <tr bgcolor="#ffe9e6">
                            <td>${item.id}</td>
                            <td>${item.username}</td>
                            <td>${item.platform}</td>
                            <td>${item.rank}</td>
                            <td>${item.email}</td>
                            <td>${item.qq}</td>
                            <td>${item.message}</td>
                            <td>null</td>
                        </tr>
                    </c:if>
            </c:forEach>
            <c:forEach items="${signed}" var="item">
                <c:if test="${item.groupid != null}">
                    <tr bgcolor="#ededff">
                        <td>${item.id}</td>
                        <td>${item.username}</td>
                        <td>${item.platform}</td>
                        <td>${item.rank}</td>
                        <td>${item.email}</td>
                        <td>${item.qq}</td>
                        <td>${item.message}</td>
                        <td>${item.groupid}</td>
                    </tr>
                </c:if>
            </c:forEach>
            </tbody>
        </table>
    </div> <!-- /container -->

</body>
</html>
