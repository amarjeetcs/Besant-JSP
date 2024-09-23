<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JSP Declaration Tag Example</title>
</head>
<body>
	<h1>JSP Declaration Tag Example</h1>
	<!-- The JSP declaration tag is used to declare fields and methods. The
	code written inside the jsp declaration tag is placed outside the
	service() method of auto generated servlet. -->
	<%-- Declaration of a variable and a method --%>
	<%!// Declare a variable
	private int count = 0;

	// Declare a method
	public String getGreeting(String name) {
		return "Hello, " + name + "!";
	}

	// Method to increment the count
	public void incrementCount() {
		count++;
	}%>

	<%-- Using the declared method and variable --%>
	<%
	// Increment count
	incrementCount();

	// Get greeting message
	String greeting = getGreeting("John Doe");
	%>

	<p>
		Greeting Message:
		<%=greeting%></p>
	<p>
		Current Count:
		<%=count%></p>
</body>
</html>
