<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choose and When Tag</title>
</head>
<body>
<c:choose>
	<c:when test="${param.lang == 'java' }">
		Learning Java
	</c:when>
	<c:when test="${param.lang == 'cs' }">
		Learning C#
	</c:when>
	<c:when test="${param.lang == 'php' }">
		Learning PHP
	</c:when>
	<c:otherwise>
		Not learning yet!
	</c:otherwise>
</c:choose>
</body>
</html>