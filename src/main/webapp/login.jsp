<%--
  Created by IntelliJ IDEA.
  User: mmdxiaoxin
  Date: 2023/10/10
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<h1>登录页面</h1>
<form action="check.jsp" method="post">
    <label>
        用户名:
        <input type="text" name="username" required>
    </label><br>
    <label>
        密码:
        <input type="password" name="password" required>
    </label><br>
    <input type="submit" value="登录">
    <br>
    <%
        String error = (String) request.getAttribute("error");
    %>
    <% if (error != null && error.length() > 0) { %>
    <p><%= error %></p>
    <% } %>
</form>
</body>
</html>
