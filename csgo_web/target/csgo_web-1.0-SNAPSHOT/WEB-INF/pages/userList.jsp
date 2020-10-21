<%--
  Created by IntelliJ IDEA.
  User: 夭暝
  Date: 2020/10/13
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>查询所有账户信息</h3>

<table>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.email}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
