<%@ include file="include/header.jsp" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h1>Add User</h1>
			<form action="${pageContext.request.contextPath}/operation" method="post">
				Username: <input type="text" name="username" required/><br/>
				Email: <input type="email" name="email" required/><br/>
				<input type="hidden" name="form" value="addUserOperation" />
				<input type="submit" value="Add user"/>
			</form>
			
		</div>
	</div>
</div>

<%@ include file="include/footer.jsp" %>