<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
    <title>JSP Implicit Objects Example - config</title>
</head>
<body>
    <h1>Using the `config` Implicit Object in JSP</h1>

    <%
        // Retrieve the initialization parameter from the config object
        String supportEmail = config.getInitParameter("email");

        // Check if the email is available
        if (supportEmail == null) {
            out.println("<p>Error: Email is not defined in the configuration.</p>");
        } else {
            out.println("<p>Support Email: " + supportEmail + "</p>");
        }
    %>

    <h2>Other JSP Implicit Objects</h2>

    <p>Session ID: <%= session.getId() %></p>
    <p>Application Context Path: <%= application.getContextPath() %></p>
    <p>Client IP Address: <%= request.getRemoteAddr() %></p>
</body>
</html>
