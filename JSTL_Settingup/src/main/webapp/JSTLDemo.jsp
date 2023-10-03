<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Demo</title>
</head>
<body>

<c:set var="name" value="Ana Pham"></c:set>
<c:out value="${name}"></c:out>
${name}

${param.msg}
<%-- <c:remove var="name"/>
${name} --%>

</body>
</html>