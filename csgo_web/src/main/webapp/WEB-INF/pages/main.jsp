<%--
  Created by IntelliJ IDEA.
  User: 夭暝
  Date: 2020/10/14
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>userinfo</p>
<label>昵称：</label><p id="username">${user.username}</p><button id="changename" onclick="changename()">changename</button>
${user.email}<br>
${user.platform}<br>
${user.rank}<br>
<c:if test="${empty seesionScope.user.group}">
    未分配
</c:if>

</body>
<script>
    function changename() {
        var username = document.getElementById("username");
        username.innerHTML = "<input id=\"username\" type=\"\" value=\"${user.username}\">";
    }
</script>
</html>
