<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Properties Form</title>
</head>
<body>
<jsp:useBean id="user" class="org.cuong.beans.User" scope="session"></jsp:useBean>
<form action="getPropertyForm.jsp">
	First name: <input type="text" name="firstName" value='<jsp:getProperty property="firstName" name="user"/>'/> <br/>
	Last name: <input type="text" name="lastName" value='<jsp:getProperty property="lastName" name="user"/>'/>
	<input type="submit" value="Submit"/>
</form>

</body>
</html>