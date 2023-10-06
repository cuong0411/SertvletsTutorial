<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URL And Redirect Tags</title>
</head>
<body>
<a href="<c:url value="/anotherPage.jsp"/>">Another Page</a>
<c:redirect url="http://google.com"/>
<c:forTokens items="" delims=""></c:forTokens>
</body>
</html>