<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.mvc.Employee" %>
<%@ page import="java.util.List" %>
<%
    Employee employee = (Employee) request.getAttribute("employee");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
</head>
<body>
    <h2>Update Employee</h2>
    <form action="EmployeeController" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="<%= employee.getId() %>">
        <label>Name:</label><input type="text" name="name" value="<%= employee.getName() %>" required>
        <label>Department:</label><input type="text" name="department" value="<%= employee.getDepartment() %>" required>
        <input type="submit" value="Update Employee">
    </form>
</body>
</html>
