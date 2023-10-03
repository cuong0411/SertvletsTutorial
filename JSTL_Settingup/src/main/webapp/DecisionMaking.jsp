<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Decision Making under JSTL</title>
</head>
<body>
<c:if test="${param.name == 'Ana' }">
	Hi Ana
</c:if>
</body>
</html>