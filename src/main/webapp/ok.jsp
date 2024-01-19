<%--
  Created by IntelliJ IDEA.
  User: mmdxiaoxin
  Date: 2023/10/10
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>表单处理结果</title>
</head>
<body>
<h1>表单处理结果</h1>
<%
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String ageStr = request.getParameter("age");
    String[] hobbies = request.getParameterValues("hobbies");

    int age = Integer.parseInt(ageStr);

    if (age < 16) {
%>
<p>年龄必须大于等于16岁才能提交表单。</p>
<%
} else {
%>
<p>姓名: <%= name %>
</p>
<p>性别: <%= gender %>
</p>
<p>年龄: <%= age %>
</p>
<p>爱好: <%= java.util.Arrays.toString(hobbies) %>
</p>
<%
    }
%>
</body>
</html>


