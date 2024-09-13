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
		Multiple of the value is:<%
	out.print(2 * 5);
	%>
	</h1>

	<%
	String str = "Amarjeet Kumar Singh";
	int len = str.length();
	%>
	<p>
		Length of the string is:
		<%=len%></p>



</body>
</html>