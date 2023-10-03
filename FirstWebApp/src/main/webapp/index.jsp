<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
</head>
<body>
	<h1>index.jsp file</h1>
	
<!-- 	jsp tag -->
<%-- 	<jsp:forward page="forward.jsp"></jsp:forward> --%>

<%
// 	request.getRequestDispatcher("forward.jsp").forward(request, response);
	response.sendRedirect("redirect.jsp");
%>
	
</body>
</html>