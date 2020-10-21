<%--
  Created by IntelliJ IDEA.
  User: 夭暝
  Date: 2020/10/13
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="/user/registerUser" method="post">
    <table>
        <tr>
            <td>email</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>username</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>password</td>
            <td><input type="text" name="password"></td>
        </tr>
        <tr>
            <td>tel</td>
            <td><input type="text" name="tel"></td>
        </tr>
        <tr>
            <td>qq</td>
            <td><input type="text" name="qq"></td>
        </tr>
        <tr>
            <td>platform</td>
            <td><input type="text" name="platform"></td>
        </tr>
        <tr>
            <td>rank</td>
            <td><input type="text" name="rank"></td>
        </tr>
        <tr>
            <td>school</td>
            <td>
                <select name="school">
                    <option value="1">in</option>
                    <option value="0">out</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
