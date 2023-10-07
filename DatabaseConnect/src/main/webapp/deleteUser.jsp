<%@ include file="include/header.jsp" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h1>Delete User</h1>
			<form action="${pageContext.request.contextPath}/operation" method="post">
				Username: <input type="text" name="username" value="${param.username}" disabled/><br/>
				Email: <input type="email" name="email" value="${param.email}" disabled/><br/>
				<input type="hidden" name="userId" value="${param.userId}" />
				<input type="hidden" name="form" value="deleteUserOperation" />
				<input type="submit" value="Delete user"/>
			</form>
			
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp" %>