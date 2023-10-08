<%-- <%@ taglib prefix="c" uri="jakarta.tags.core" %> --%>
<%@ include file="include/header.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="org.cuong.entity.User" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h1>List of Users</h1>
			<hr/>
			<table class="table">
				<thead>
					<th>User Id</th>
					<th>User Name</th>
					<th>Email</th>
					<th>Operation</th>
				</thead>
				<tbody>
				<c:forEach items="${listUser}" var="user">
					<c:url var="updateURL" value="operation">
						<c:param name="page" value="updateUser"></c:param>
						<c:param name="userId" value="${user.getUsers_id()}"></c:param>
						<c:param name="username" value="${user.getUsername()}"></c:param>
						<c:param name="email" value="${user.getEmail()}"></c:param>
					</c:url>
					<c:url var="deleteURL" value="operation">
						<c:param name="page" value="deleteUser"></c:param>
						<c:param name="userId" value="${user.getUsers_id()}"></c:param>
						<c:param name="username" value="${user.getUsername()}"></c:param>
						<c:param name="email" value="${user.getEmail()}"></c:param>
					</c:url>
					<tr>
						<td>${user.getUsers_id()}</td>
						<td>${user.getUsername()}</td>
						<td>${user.getEmail()}</td>
						<td>
							<a href="${updateURL}">Update</a>
							<a href="${deleteURL}"
								onclick="if(!confirm('Are you sure to delete this user?')) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
				
				
				
				</tbody>
			</table>
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp" %>