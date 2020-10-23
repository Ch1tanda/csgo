<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加分组</title>
    <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
    <script src="../../../js/jquery-3.5.1.js"></script>
    <script>
        function submit(){
            var reg = new RegExp("^[0-9]*$");
            var id = document.getElementById("id").value;
            if(id == ""){
                alert("请输入队伍id");
            }if(!reg.test(id)){
                alert("id必须是纯数字");
            }else{
                $.ajax({
                    url:"revoke",
                    type:"post",
                    contentType: "application/json;charset=UTF-8",
                    data:id,
                    dataType:"json",
                    success:function (data) {
                        if(data){
                            alert("撤销成功");
                            location.reload();
                        }else{
                            alert("撤销失败，组号不存在");
                        }
                    }
                })
            }
        }
        
        function modify() {
            var groupid = document.getElementById("id2").value;
            var groupname = document.getElementById("groupname").value;
            var reg = new RegExp("^[0-9]*$");
            if(groupid == "" || groupname == ""){
                alert("请输全信息");
            }else if(!reg.test(groupid)){
                alert("id必须是纯数字")
            }else{
                $.ajax({
                    url:"modifygroup",
                    type:"post",
                    data:{
                        "groupid":groupid,
                        "groupname":groupname
                    },
                    success:function (data) {
                        if(data){
                            alert("修改成功");
                            location.reload();
                        }else{
                            alert("修改失败，可能是队伍不存在或者名字太离谱");
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
                <li><a href="userinfo">选手信息</a></li>
                <li class="active"><a href="group">分组信息</a></li>
                <li><a href="addresult">添加赛果</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="backtouser">返回用户页面</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br><br>
    <div class="row">
        <div class="col-md-2">
            <h1>撤销分组</h1>
            <div class="form-group">
                <label for="id">组号</label>
                <input type="email" class="form-control" id="id" placeholder="组号id">
                <br>
                <button type="button" class="btn btn-info" onclick="submit()" id="btn1">提交撤销</button>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <div class="row">
                <h1>修改队名</h1>
                <div class="col-md-6" style="padding-left: 0%;padding-top: 0%;padding-bottom: 0%;">
                    <label for="id2" >组号</label>
                    <input type="email" class="form-control" id="id2" placeholder="组号id">
                    <br>
                    <button type="button" class="btn btn-info" onclick="modify()" id="btn1">提交修改</button>
                </div>
                <div class="col-md-6"">
                <label for="groupname">队名</label>
                <input type="email" class="form-control" id="groupname" placeholder="队名">
            </div>
        </div>
    </div>
</div>
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
