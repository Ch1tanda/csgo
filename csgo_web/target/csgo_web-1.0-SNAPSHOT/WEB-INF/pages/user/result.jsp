<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>比赛信息</title>
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
                <li><a href="profile">个人信息</a></li>
                <li><a href="signup">赛事报名</a></li>
                <li><a href="group">分组查询</a></li>
                <li class="active"><a href="result">比赛信息</a></li>
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
        <h2>比赛信息查询</h2>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <td>α组</td>
            <td>β组</td>
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
