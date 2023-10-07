<%-- <%@ taglib prefix="c" uri="jakarta.tags.core" %> --%>
<%@ include file="include/header.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="org.cuong.entity.User" %>

<!-- <c:import url="include/header.jsp"> -->
<!-- 	<c:param name="title" value="List of Users"/> -->
<!-- </c:import> -->

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
					<%
					List<User> listUser = (List<User>)  request.getAttribute("listUser");
					String tempURL;
					for (User user : listUser) {
						out.print("<tr>");
						out.print("<td>"+ user.getUsers_id() +"</td>");
						out.print("<td>"+ user.getUsername() +"</td>");
						out.print("<td>"+ user.getEmail() +"</td>");
						
						tempURL = request.getContextPath()
								+ "/operation?page=updateUser"
								+ "&userId=" + user.getUsers_id()
								+ "&username=" + user.getUsername()
								+ "&email=" +user.getEmail();
						out.print("<td><a href=" + tempURL + ">Update<a/></td>");
						out.print("</tr>");
					}
				%>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- <c:import url="include/footer.jsp"></c:import> -->
<%@ include file="include/footer.jsp" %>