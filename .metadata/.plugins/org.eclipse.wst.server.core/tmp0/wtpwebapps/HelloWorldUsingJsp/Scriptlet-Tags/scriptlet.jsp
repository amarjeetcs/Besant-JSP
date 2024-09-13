<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Scriptlet Tag Example</title>
</head>
<body>
    <%
        // Retrieving request parameter using the request implicit object
        String userName = request.getParameter("uname");

        // If the user has submitted a name, print a personalized message
        if (userName != null && !userName.isEmpty()) {
            out.println("<h1>Welcome, " + userName + "!</h1>");
        } else {
            out.println("<h1>Please enter your name.</h1>");
        }

        // Using a loop inside scriptlet tag to print numbers
        out.println("<p>List of Numbers:</p>");
        for (int i = 1; i <= 5; i++) {
            out.println(i + "<br/>");
        }
    %>
</body>
</html>
