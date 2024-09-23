<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>  <!-- Include header file -->
<%@ include file="footer.jsp" %>  <!-- Include footer file -->

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
    <h2>Current Date and Time</h2>
    <%
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = sdf.format(now);
    %>
    <p>The current date and time is: <%= formattedDate %></p>
</body>
</html>
