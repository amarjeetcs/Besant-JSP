package com.example.mvc;

import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    private List<Employee> employees = new ArrayList<>();

    // Create
    public void addEmployee(Employee employee) {
        employees.add(employee);
    }

    // Read
    public List<Employee> getAllEmployees() {
        return employees;
    }

    // Update
    public void updateEmployee(int id, Employee updatedEmployee) {
        for (Employee emp : employees) {
            if (emp.getId() == id) {
                emp.setName(updatedEmployee.getName());
                emp.setDepartment(updatedEmployee.getDepartment());
            }
        }
    }

    // Delete
    public void deleteEmployee(int id) {
        employees.removeIf(emp -> emp.getId() == id);
    }

    // Find by ID
    public Employee getEmployeeById(int id) {
        return employees.stream().filter(emp -> emp.getId() == id).findFirst().orElse(null);
    }
}
