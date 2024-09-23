package com.example.mvc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
    private EmployeeDAO employeeDAO = new EmployeeDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action.equals("add")) {
            // Add Employee
            String name = request.getParameter("name");
            String department = request.getParameter("department");
            int id = employeeDAO.getAllEmployees().size() + 1; // ID auto-increment for simplicity
            Employee employee = new Employee(id, name, department);
            employeeDAO.addEmployee(employee);
            response.sendRedirect("EmployeeController?action=list");
        } else if (action.equals("update")) {
            // Update Employee
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String department = request.getParameter("department");
            Employee updatedEmployee = new Employee(id, name, department);
            employeeDAO.updateEmployee(id, updatedEmployee);
            response.sendRedirect("EmployeeController?action=list");
        } else if (action.equals("delete")) {
            // Delete Employee
            int id = Integer.parseInt(request.getParameter("id"));
            employeeDAO.deleteEmployee(id);
            response.sendRedirect("EmployeeController?action=list");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action.equals("list")) {
            // List Employees
            request.setAttribute("employees", employeeDAO.getAllEmployees());
            request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
        } else if (action.equals("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Employee employee = employeeDAO.getEmployeeById(id);
            request.setAttribute("employee", employee);
            request.getRequestDispatcher("updateEmployee.jsp").forward(request, response);
        }
    }
}
