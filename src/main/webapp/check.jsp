<%--
  Created by IntelliJ IDEA.
  User: mmdxiaoxin
  Date: 2023/10/10
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String expectedUsername = "admin"; // 期望的用户名
    String expectedPassword = "123456"; // 期望的密码

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username.equals(expectedUsername) && password.equals(expectedPassword)) {
        // 验证成功，将用户信息存储在会话中
        session.setAttribute("username", username);
        response.sendRedirect("admin.jsp");
    } else {
        // 验证失败，返回登录页面并显示错误信息
        request.setAttribute("error", "用户名或密码错误");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
