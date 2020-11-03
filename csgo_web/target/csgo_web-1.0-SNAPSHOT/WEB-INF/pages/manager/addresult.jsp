<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加赛果</title>
    <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
    <script src="../../../js/jquery-3.5.1.js"></script>
    <script>
        function emessage(){
            var id = document.getElementById("id").value;
            var message = document.getElementById("message").value;
            var id_reg = /^[0-9]*$/;
            if(id.length == 0 || id == "" || !id_reg.test(id)){
                alert("请输入合法id");
            }else if(message.length == 0 || message == ""){
                alert("请填写修改的备注");
            } else{
                $.ajax({
                    url:"message",
                    type:"post",
                    data:{
                        "id":id,
                        "message":message
                    },
                    success:function (data) {
                        if(data){
                            alert("备注修改成功");
                            location.reload();
                        }else{
                            alert("id可能不存在或者其他异常");
                        }
                    }
                })
            }
        }

        function eeventtime(){
            var id = document.getElementById("id").value;
            var eventtime = document.getElementById("eventtime").value;
            var id_reg = /^[0-9]*$/;
            if(id.length == 0 || id == "" || !id_reg.test(id)){
                alert("请输入合法id");
            }else if(eventtime.length == 0 || eventtime == ""){
                alert("请填写修改的比赛时间");
            } else{
                $.ajax({
                    url:"eventtime",
                    type:"post",
                    data:{
                        "id":id,
                        "eventtime":eventtime
                    },
                    success:function (data) {
                        if(data){
                            alert("比赛时间修改成功");
                            location.reload();
                        }else{
                            alert("id可能不存在或者其他异常");
                        }
                    }
                })
            }
        }

        function eeventresult(){
            var eventresult = document.getElementById("eventresult").value;
            var id = document.getElementById("id").value;
            var id_reg = /^[0-9]*$/;
            if(id.length == 0 || id == "" || !id_reg.test(id)){
                alert("请输入合法id");
            }else if(eventresult.length == 0 || eventresult == ""){
                alert("请填写修改的比赛结果");
            } else{
                $.ajax({
                    url:"eventresult",
                    type:"post",
                    data:{
                        "id":id,
                        "eventresult":eventresult
                    },
                    success:function (data) {
                        if(data){
                            alert("比赛结果修改成功");
                            location.reload();
                        }else{
                            alert("id可能不存在或者其他异常");
                        }
                    }
                })
            }
        }

        function ebv(){
            var bv = document.getElementById("bv").value;
            var id = document.getElementById("id").value;
            var id_reg = /^[0-9]*$/;
            if(id.length == 0 || id == "" || !id_reg.test(id)){
                alert("请输入合法id");
            }else if(bv.length == 0 || bv == ""){
                alert("请输入要修改的bv号");
            }else{
                $.ajax({
                    url:"bv",
                    type:"post",
                    data:{
                        "id":id,
                        "bv":bv
                    },
                    success:function (data) {
                        if(data){
                            alert("bv号修改成功");
                            location.reload();
                        }else{
                            alert("id可能不存在或者其他异常");
                        }
                    }
                })
            }
        }

        function edelete(){
            var id = document.getElementById("id").value;
            var id_reg = /^[0-9]*$/;
            if(id.length == 0 || id == "" || !id_reg.test(id)) {
                alert("请输入合法id");
            }else{
                $.ajax({
                    url:"deleteevent",
                    type:"post",
                    data:{
                        "id":id
                },
                success: function (data) {
                    if(data){
                        alert("删除成功");
                        location.reload();
                    }else{
                        alert("id可能不存在或者其他异常");
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
                <li><a href="group">分组信息</a></li>
                <li class="active"><a href="addresult">添加赛果</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="backtouser">返回用户页面</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br><br>
    <h1>先输入对应比赛id，之后修改想要修改的即可</h1>
    <div class="row">
        <div class="col-md-1">
            <label>id</label>
            <input type="text" class="form-control" id="id" placeholder="#id"><br>
            <button type="button" class="btn btn-info" onclick="edelete()">删除赛事</button>
        </div>
        <div class="col-md-3">
            <label>修改备注</label>
            <input type="text" class="form-control" id="message"><br>
            <button type="button" class="btn btn-info" onclick="emessage()">修改备注</button>
        </div>
        <div class="col-md-2">
            <label>修改比赛时间</label>
            <input type="text" class="form-control" id="eventtime"><br>
            <button type="button" class="btn btn-info" onclick="eeventtime()">修改比赛时间</button>
        </div>
        <div class="col-md-2">
            <label>修改比赛结果</label>
            <input type="text" class="form-control" id="eventresult"><br>
            <button type="button" class="btn btn-info" onclick="eeventresult()">修改比赛结果</button>
        </div>
        <div class="col-md-2">
            <label>添加录播地址</label>
            <input type="text" class="form-control" id="bv" placeholder="例:BVxxxxxx"><br>
            <button type="button" class="btn btn-info" onclick="ebv()">添加录播地址</button>
        </div>
    </div>
    <h1>已经创建的赛事</h1>
    <table class="table table-striped">
        <thead>
            <tr>
                <td>#</td>
                <td>A</td>
                <td>B</td>
                <td>备注</td>
                <td>比赛时间</td>
                <td>比赛结果</td>
                <td>录播地址</td>
            </tr>
        </thead>
        <tbody>
        <!--把没有比赛结果的优先打印-->
            <c:forEach items="${events}" var="item">
               <c:if test="${item.eventresult == null}">
                   <tr>
                       <td>${item.id}</td>
                       <td>${item.groupaname}(${item.groupaid})</td>
                       <td>${item.groupbname}(${item.groupbid})</td>
                       <td>${item.message}</td>
                       <c:if test="${item.eventtime == null}">
                           <td>未定</td>
                       </c:if>
                       <c:if test="${item.eventtime != null}">
                           <td>${item.eventtime}</td>
                       </c:if>
                       <c:if test="${item.eventresult == null}">
                           <td>未结束</td>
                       </c:if>
                       <c:if test="${item.eventresult != null}">
                           <td>${item.eventresult}</td>
                       </c:if>
                       <c:if test="${item.bv == null}">
                           <td><p>录播暂未上传<p></td>
                       </c:if>
                       <c:if test="${item.bv != null}">
                           <td><p><a href="https://www.bilibili.com/video/${item.bv}" disabled="disabled" target="_blank">点此跳转</a></p></td>
                       </c:if>
                   </tr>
               </c:if>
            </c:forEach>
            <!--把有比赛结果的往后打印-->
            <c:forEach items="${events}" var="item">
                <c:if test="${item.eventresult != null}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.groupaname}(${item.groupaid})</td>
                        <td>${item.groupbname}(${item.groupbid})</td>
                        <td>${item.message}</td>
                        <c:if test="${item.eventtime == null}">
                            <td>未定</td>
                        </c:if>
                        <c:if test="${item.eventtime != null}">
                            <td>${item.eventtime}</td>
                        </c:if>
                        <c:if test="${item.eventresult == null}">
                            <td>未结束</td>
                        </c:if>
                        <c:if test="${item.eventresult != null}">
                            <td>${item.eventresult}</td>
                        </c:if>
                        <c:if test="${item.bv == null}">
                            <td><p>录播暂未上传</p></td>
                        </c:if>
                        <c:if test="${item.bv != null}">
                            <td><p><a href="https://www.bilibili.com/video/${item.bv}" disabled="disabled" target="_blank">点此跳转</a></p></td>
                        </c:if>
                    </tr>
                </c:if>
            </c:forEach>
        </tbody>
    </table>
</div> <!-- /container -->

</body>
</html>
