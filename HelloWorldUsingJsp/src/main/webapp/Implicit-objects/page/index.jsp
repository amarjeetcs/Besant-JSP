<%@ page import="java.util.Date"%>
<html>
<head>
<title>Page Directive Example</title>
</head>
<body>
	<h2>Page Directive Example</h2>

	<p>
		Current Date and Time:
		<%=new Date()%></p>
	<%
	out.println("The current JSP servlet instance: " + page);
	%>
	<%
	// Log a message to the server log file using pageContext
	pageContext.getServletContext().log("This is a log message from JSP.");
	%>
	<br>
	<%
	// Log a message to the server log using ServletContext
	String logMessage = "Log entry from JSP at: " + new Date();
	pageContext.getServletContext().log(logMessage);

	// Output to the page to show that the log was made
	out.println("Log entry made: " + logMessage);
	%>
	<br>
	<%
	String name = "John Doe";
	// Store the user in session scope
	pageContext.setAttribute("user", name, PageContext.SESSION_SCOPE);
	%>
	<br>
	<!-- Later in another page or the same page, you can retrieve the value -->
	<%
	String userName = (String) pageContext.getAttribute("user", PageContext.SESSION_SCOPE);
	out.println("Logged in user: " + userName);
	%>

	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<html>
<head>
<title>Page Object Example</title>
</head>
<body>
	<%
	// Printing the page object (equivalent to 'this')
	out.print("This is the current JSP page instance: " + page.toString());
	%>

	<%
	// Printing the page object (equivalent to 'this')
	out.print("This is the current JSP page instance: " + page.toString());
	%>
</body>
</html>





//pageContext //page




</body>
</html>
