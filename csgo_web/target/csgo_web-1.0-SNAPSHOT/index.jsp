<%--
  Created by IntelliJ IDEA.
  User: 夭暝
  Date: 2020/10/10
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<script src="js/jquery-3.5.1.js"/>
<script>

    $(function () {
        $("#bb").click(function () {
            alert("test");
        })
    })

    function test() {
        alert("test");
    }

</script>
</head>
<body>

<a href="/user/findAll">测试查询所有选手</a><br>
<a href="/user/register">测试注册</a><br>
<a href="/group/findAll">测试查询所有战队</a>
<button id="btn" onclick="test()">测试js</button>
<button id="bb">测试ajax</button>
<form action="/user/main" method="post">

<table>
    <tr>
        <td>email:</td>
        <td><input type="text" id="email" name="email"></td>
    </tr>
    <tr>
        <td>password:</td>
        <td><input type="text" name="password"></td>
    </tr>
    <tr>
        <td>
            <input type="submit" value="submit">
        </td>
    </tr>
</table>
</form>
</body>
</html>
