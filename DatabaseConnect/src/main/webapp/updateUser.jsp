<%@ include file="include/header.jsp" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h1>Add User</h1>
			<form action="${pageContext.request.contextPath}/operation" method="post">
				Username: <input type="text" name="username" value="${param.username}" required/><br/>
				Email: <input type="email" name="email" value="${param.email}" required/><br/>
				<input type="hidden" name="userId" value="${param.userId}" />
				<input type="hidden" name="form" value="updateUserOperation" />
				<input type="submit" value="Update user"/>
			</form>
			
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp" %>