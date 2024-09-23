<%@ page import="java.util.List" %>
<%@ page import="com.example.mvc.Employee" %>
<%@ page import="com.example.mvc.EmployeeDAO" %>
<%
    List<Employee> employees = (List<Employee>) request.getAttribute("employees");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
    <h2>Employee List</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Actions</th>
        </tr>
        <%
            for (Employee emp : employees) {
        %>
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getName() %></td>
            <td><%= emp.getDepartment() %></td>
            <td>
                <form action="EmployeeController" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="<%= emp.getId() %>">
                    <input type="hidden" name="action" value="delete">
                    <input type="submit" value="Delete">
                </form>
                <form action="EmployeeController" method="get" style="display:inline;">
                    <input type="hidden" name="id" value="<%= emp.getId() %>">
                    <input type="hidden" name="action" value="update">
                    <input type="submit" value="Update">
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>
    <a href="index.jsp">Add New Employee</a>
</body>
</html>
