<%--
  Created by IntelliJ IDEA.
  User: mmdxiaoxin
  Date: 2023/10/10
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String rememberedUsername = "";
    String rememberedPassword = "";

    // 检查是否存在名为 "username" 和 "password" 的Cookie
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                rememberedUsername = cookie.getValue();
            }
            if (cookie.getName().equals("password")) {
                rememberedPassword = cookie.getValue();
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<h1>登录页面</h1>
<form action="check-ex.jsp" method="post">
    <label for="username">用户名: </label><input type="text" name="username" id="username"
                                                 value="<%= rememberedUsername %>" required><br>
    <label for="password">密码: </label><input type="password" name="password" id="password"
                                               value="<%= rememberedPassword %>" required><br>
    <label>
        记住用户名和密码：
        <input type="checkbox" name="remember">
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

