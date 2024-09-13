<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Request Object Example</title>
</head>
<body>
    <%
        // Getting data from the request
        String userName = request.getParameter("uname");
        out.print("Hello, " + userName + "!<br/>");

        // Fetching additional request information
        out.print("Request Method: " + request.getMethod() + "<br/>");
        out.print("Client IP Address: " + request.getRemoteAddr() + "<br/>");
    %>
</body>
</html>
