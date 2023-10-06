<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core Demo</title>
</head>
<body>
<%
String URL = "<a href='http://google.com'>Home</a>";
ServletContext context = getServletContext();
context.setAttribute("url", URL);
%>

${url}
</body>
</html>