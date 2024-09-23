<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Session Object Example</title>
</head>
<body>
    <%
        // Storing a value in the session
        session.setAttribute("Prabha", "Amarjeet Kumar Singh");

        // Retrieving the session attribute
        String user = (String) session.getAttribute("Prabha");
        out.print("Session User: " + user + "<br/>");

        // Invalidating the session (optional)
        // session.invalidate();
    %>
</body>
</html>
