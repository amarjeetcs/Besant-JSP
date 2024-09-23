<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.User" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Information Submitted</title>
</head>
<body>
    <h1>User Information Submitted</h1>

    <!-- Use the User bean -->
    <jsp:useBean id="user" class="com.example.User" scope="session" />

    <!-- Set properties from the form -->
    <jsp:setProperty name="user" property="name" param="name" />
    <jsp:setProperty name="user" property="email" param="email" />

    <h2>Submitted Information:</h2>
    <p>Name: <jsp:getProperty name="user" property="name" /></p>
    <p>Email: <jsp:getProperty name="user" property="email" /></p>

    <p><a href="index.jsp">Go Back</a></p>
</body>
</html>
