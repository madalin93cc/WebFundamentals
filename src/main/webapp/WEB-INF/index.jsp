<%@ page import="com.pluralsight.User" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> ${initParam.ProductName} </title>
    <link href="app.css" rel="stylesheet" type="text/css">
</head>
<body>
    <%@include file="header.jsp"%>
    <%--<%--%>
        <%--User user = (User) request.getAttribute("user");--%>
        <%--if (user == null){--%>
            <%--user = new User();--%>
        <%--}--%>
    <%--%>--%>

    <%--<%= user.get_name()%>--%>
    <div class="${app.formCssClass.name}">
        ${ user.name }
        ${ user.name == "Madalin" }
    </div>


    <form action="home" method="post">
        <p>
            Name: <input type="text" name="name"/>
        </p>
        <p>
            <input type="submit" value="Enter name">
        </p>
    </form>
</body>
</html>
