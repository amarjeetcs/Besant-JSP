<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Application Object Example</title>
</head>
<body>
    <%
        // Storing a value in the application scope
        application.setAttribute("appName", "My Web Application");

        // Retrieving the application attribute
        String appName = (String) application.getAttribute("appName");
        out.print("Application Name: " + appName);
    %>
</body>
</html>
