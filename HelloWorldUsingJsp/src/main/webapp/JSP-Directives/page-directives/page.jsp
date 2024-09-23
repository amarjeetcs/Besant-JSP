<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP Page Directives Example</title>
</head>
<body>
    <h1>Welcome to JSP Page Directives Example</h1>

    <% 
        // Use a scriptlet to get the current date and format it
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = sdf.format(now);
    %>
    
    <p>Current Date and Time: <%= formattedDate %></p>

    <h2>Page Directive Examples</h2>
    <ul>
        <li>Content Type: <%= pageContext.getResponse().getContentType() %></li>
        <li>Charset: <%= response.getCharacterEncoding() %></li>
        <li>Imported Classes: java.util.Date, java.text.SimpleDateFormat</li>
        <li>Error Page: error.jsp</li>
    </ul>
    
    <h2>Demonstrating Error Handling</h2>
    <form method="post" action="errorHandling.jsp">
        <input type="submit" value="Trigger Error">
    </form>
</body>
</html>
