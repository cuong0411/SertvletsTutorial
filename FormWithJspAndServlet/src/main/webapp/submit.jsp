<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit</title>
</head>
<body>
Name: <%= request.getParameter("name") %>
<br/>
Languages: <%
	String[] languages = request.getParameterValues("language");
	if (languages != null) {
		for (String language : languages) {
			out.print(language + " ");
		}
	} else {
		out.print("none selected");
	}
%>
</body>
</html>