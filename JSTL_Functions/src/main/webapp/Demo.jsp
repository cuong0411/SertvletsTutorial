<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Functions</title>
</head>
<body>
<%
String[] names = {"Ana", "Topson", "Ceb"};
%>
${fn:length("A simple string")}
<br/>
<c:set var="nameArr" value="<%= names %>"></c:set>
There are: ${fn:length(nameArr)} names.
</body>
</html>