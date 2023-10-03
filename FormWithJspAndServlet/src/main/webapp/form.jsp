<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Demo</title>
</head>
<body>
	<!-- <form action="submit.jsp" method="get"> -->
	<form action="<%= request.getContextPath() %>/Controller" method="get">
		Full name: <input type="text" name="name" required/> <br/>
		Gender: <input type="radio" name="male" checked="checked"/> Male
				<input type="radio" name="female"/> Female <br/>
		Language: <input type="checkbox" name="language" value="english"/> English
				  <input type="checkbox" name="language" value="japanese"/> Japanese
				  <input type="checkbox" name="language" value="vietnamese"/> Vietnamese <br/>
		Country:
		<select name="country">
			<option value="japan">Japan</option>
			<option value="vietnam">Vietnam</option>
			<option value="america">America</option>
		</select> <br/>
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>