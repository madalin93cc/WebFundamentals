<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title></title>
</head>
<body>
    <p>Error page</p>
    <%= exception.getMessage()%>
    <%= exception.getStackTrace()%>
</body>
</html>
