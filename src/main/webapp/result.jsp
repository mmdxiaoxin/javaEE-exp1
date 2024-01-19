<%--
  Created by IntelliJ IDEA.
  User: mmdxiaoxin
  Date: 2023/10/10
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果页面</title>
</head>
<body>
<%
    String clickedLink = request.getParameter("link");

    if (clickedLink != null) {
%>
<p>你点击了 "<%= clickedLink %>" ...
</p>
<%
} else {
%>
<p>没有选择任何链接。</p>
<%
    }
%>
</body>
</html>
