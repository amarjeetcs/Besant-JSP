<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>
		Multiplication of two numbers is:
		<%
	// Multiplication directly inside scriptlet
	out.print(2 * 5);
	%>
	</h1>

	<!-- Scriptlet for printing a welcome message -->
	<%
	out.print("Hi Amarjeet, Welcome to JSP Page<br>");
	%>

	<!-- Print multiplication result to the server log -->
	<%
	System.out.println(2 * 50);
	%>

	<h1>
		Multiplication of two numbers is:
		<%
	int x = 10;
	System.out.println("This is variable x: " + x);
	out.print(2 * 50);
	out.print("<br>Hi Amarjeet, Welcome to JSP Page<br>");
	System.out.println(20 * 5);
	%>
	</h1>

	<%
	// Defining a constructor inside the scriptlet
	class Calculator {
		int a;
		int b;

		// Constructor
		public Calculator(int a, int b) {
			this.a = a;
			this.b = b;
		}

		// Method for multiplication
		public int multiply() {
			return a * b;
		}
	}

	// Static block
	{
		System.out.println("Static block executed");
	}

	// Creating an instance of the class and calling the method
	Calculator calc = new Calculator(5, 10);
	int result = calc.multiply();
	%>

	<h1>
		Multiplication result using method is:
		<%=result%></h1>

</body>
</html>
