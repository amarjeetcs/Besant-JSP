<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JSP Expression Tag Example</title>
</head>
<body>
	<h1>JSP Expression Tag Examples</h1>

	<%-- Variable --%>
	<%
	String name = "John Doe";
	int age = 30;
	double height = 1.75;
	java.util.Date currentDate = new java.util.Date();
	%>

	<p>
		Name:
		<%=name%>
	</p>

	<%-- Arithmetic Operation --%>
	<p>
		Sum:
		<%=10 + 20%>
	</p>

	<%-- Method Call --%>
	<p>
		Current Date and Time:
		<%=currentDate%>
	</p>

	<%-- String Concatenation --%>
	<p>
		Greeting:
		<%="Hello, " + name%>
	</p>

	<%-- Conditional Expression --%>
	<p>
		Age Status:
		<%=(age > 18) ? "Adult" : "Minor"%>
	</p>

	<%-- Object Property/Method --%>
	<p>
		Random Number (0-99):
		<%=(int) (Math.random() * 100)%>
	</p>

	<%-- Collection Example --%>
	<%
	java.util.List<String> list = java.util.Arrays.asList("Apple", "Banana", "Cherry");
	%>
	<p>
		List Size:
		<%=list.size()%>
	</p>

	<%-- Correct way to print a custom message to the client --%>
	<p>
		My Name is:
		<%="Amarjeet"%>
	</p>
	<%
	// Printing to server console
	System.out.println("My name is Amarjeet. This is printed to the console.");
	System.out.println("Random Number: " + (int) (Math.random() * 100));
	%>

</body>
</html>
