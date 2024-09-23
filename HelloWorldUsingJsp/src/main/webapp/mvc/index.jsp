<!DOCTYPE html>
<html>
<head>
    <title>Employee Management</title>
</head>
<body>
    <h1>Welcome to Employee Management</h1>
    <form action="EmployeeController" method="post">
        <input type="hidden" name="action" value="add">
        <label>Name:</label><input type="text" name="name" required>
        <label>Department:</label><input type="text" name="department" required>
        <input type="submit" value="Add Employee">
    </form>
    <a href="EmployeeController?action=list">View Employees</a>
</body>
</html>
