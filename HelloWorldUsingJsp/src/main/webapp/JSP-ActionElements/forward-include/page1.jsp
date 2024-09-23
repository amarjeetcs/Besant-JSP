<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Page 1</title>
</head>
<body>
    <h2>This is Page 1</h2>
    <p>This page will forward the request to Page 2.</p>

    <form action="page2.jsp" method="post">
        <input type="submit" value="Go to Page 2">
    </form>
</body>
</html>
