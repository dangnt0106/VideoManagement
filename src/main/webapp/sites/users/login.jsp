<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="offset-4 col-4">
	<form action="" method="post">
		<div class="card">
			<div class="card-header">
				<b>Login To System</b>
			</div>
			<div class="card-body">
			<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						class="form-control" name="username" id="username"
						aria-describedby="usernameHeplId" placeholder="Username">
					<small id="usernameHeplId" class="form-text text-muted">Username
						is required</small>
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						class="form-control" name="password" id="password"
						aria-describedby="passwordHelpId" placeholder="Password">
					<small id="passwordHelpId" class="form-text text-muted">Password
						is required</small>
				</div>
				<div class="form-check form-check-inline">
					<label><input type="checkbox" class=" form-check-input"
						name="remember">Remember Me</label>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Login</button>
			</div>
		</div>
	</form>
</div>