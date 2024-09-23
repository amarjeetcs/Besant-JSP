<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Information Form</title>
</head>
<body>
    <h1>User Information</h1>

    <!-- Use the User bean -->
    <jsp:useBean id="user" class="com.example.User" scope="session" />

    <!-- Form to input user data -->
    <form action="submit.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<jsp:getProperty name='user' property='name'/>"><br/><br/>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<jsp:getProperty name='user' property='email'/>"><br/><br/>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
