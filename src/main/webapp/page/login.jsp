<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <form action="${pageContext.request.contextPath}/login" method="post">
            用户名:<input type="text" name="userId" /><br>
            密码:<input type="text" name="password" /><br>
            <input type="submit" value="登录" />
        </form>
    </div>
</body>
</html>
