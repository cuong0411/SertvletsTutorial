<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>

<%
String username = null, sessionId = null;
/* Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("username")) {
			username = cookie.getValue();
		}
		if (cookie.getName().equals("JSESSIONID")) {
			sessionId = cookie.getValue();
		}
	}
} */
if (request.getSession().getAttribute("username") == null) {
	response.sendRedirect(request.getContextPath() + "/SiteController?action=login");
} else {
	username = request.getSession().getAttribute("username").toString();
	sessionId = request.getSession().getId();
}
/* if (sessionId == null || username == null) {
	response.sendRedirect("login.jsp");
} */
%>
<%= username %>
<%= sessionId %>
	<h1>Member Area</h1>
	
	<form action="<%= request.getContextPath()%>/MemberAreaController" method="get">
		<input type="hidden" name="action" value="destroy"/>
		<input type="submit" value="Logout"/>
	</form>
</body>
</html>