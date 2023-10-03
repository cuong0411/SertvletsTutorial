<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>

	<ul>
		<li><a href="<%= request.getContextPath() %>">Index</a></li>
		<li><a href="<%= request.getContextPath() %>/Controller?page=login">Login</a></li>
		<li><a href="<%= request.getContextPath() %>/Controller?page=signUp">Sign up</a></li>
		<li><a href="<%= request.getContextPath() %>/Controller?page=about">About</a></li>
	</ul>
</body>
</html>