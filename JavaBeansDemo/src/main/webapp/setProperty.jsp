<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Properties</title>
</head>
<body>
<jsp:useBean id="user" class="org.cuong.beans.User" scope="request"></jsp:useBean>


First name: <jsp:getProperty property="firstName" name="user"/> <br/>
Last name: <jsp:getProperty property="lastName" name="user"/>

<br/>
<jsp:setProperty property="firstName" name="user" value="Cuong"/>
<jsp:setProperty property="lastName" name="user" value="Nguyen"/>
Values have been set

<!-- <br/> -->
<%-- First name: <jsp:getProperty property="firstName" name="user"/> <br/> --%>
<%-- Last name: <jsp:getProperty property="lastName" name="user"/> --%>

<!-- forward the request object from this page to another page -->
<%
	request.getRequestDispatcher("getProperty.jsp").forward(request, response);
%>
</body>
</html>