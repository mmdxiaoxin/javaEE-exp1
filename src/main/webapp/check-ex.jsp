<%--
  Created by IntelliJ IDEA.
  User: mmdxiaoxin
  Date: 2023/10/10
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String expectedUsername = "admin"; // 期望的用户名
    String expectedPassword = "123456"; // 期望的密码

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String remember = request.getParameter("remember");

    if (username.equals(expectedUsername) && password.equals(expectedPassword)) {
        // 验证成功
        session.setAttribute("username", username);

        // 检查是否选中了“记住用户名和密码”的复选框
        if (remember != null && remember.equals("on")) {
            // 创建Cookie并存储用户名和密码
            Cookie usernameCookie = new Cookie("username", username);
            Cookie passwordCookie = new Cookie("password", password);

            // 设置Cookie的有效期
            usernameCookie.setMaxAge(7 * 24 * 60 * 60); // 7天
            passwordCookie.setMaxAge(7 * 24 * 60 * 60); // 7天

            // 将Cookie发送给客户端
            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);
        }

        response.sendRedirect("admin.jsp");
    } else {
        // 验证失败，返回登录页面并显示错误信息
        request.setAttribute("error", "用户名或密码错误");
        request.getRequestDispatcher("login-ex.jsp").forward(request, response);
    }
%>

