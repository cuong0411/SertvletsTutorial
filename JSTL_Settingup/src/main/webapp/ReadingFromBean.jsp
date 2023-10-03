<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reading from Bean using Expression Language</title>
</head>
<body>
<jsp:useBean id="user" class="org.cuong.beans.User" scope="page"></jsp:useBean>
<%-- <jsp:getProperty property="firstName" name="user"/> --%>
<ul>
	<li>Reading using getter: ${user.getFirstName()}</li>
	<li>Reading using private property: ${user.firstName}</li>
	<li><c:out value="${user.getLastName() }"></c:out></li>
</ul>


</body>
</html>