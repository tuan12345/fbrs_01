<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/" var="homeUrl"></spring:url>
<div class="container">
	<div> <a href="?lang=en">English</a> <a href="?lang=vi">Vietnamsese</a></div>
	<h3><a href="${homeUrl}">Home</a></h3>
	<form class="login-form" action="<c:url value='j_spring_security_login' />" method="POST">
		<div class="login-wrap">
			<p class="login-img">
				<i class="icon_lock_alt"></i>
			</p>
			<c:if test="${msg != null}">
				<div class="alert alert-danger" role="alert"><span class="text-center">${msg}</span></div>
			</c:if>
			<div class="input-group">
				<span class="input-group-addon"><i class="icon_profile"></i></span>
				<input type="text" class="form-control" placeholder="Username"
					name="username" autofocus>
			</div>
			<div class="input-group">
				<span class="input-group-addon"><i class="icon_key_alt"></i></span>
				<input type="password" name="password" class="form-control"
					placeholder="Password">
			</div>
			<label class="checkbox"> <input	type="checkbox"
				value="remember-me"> Remember me <span class="pull-right">
					<a href="#"> Forgot Password?</a>
			</span>
			</label>
			<button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<div class="text-right">
		<div class="credits">
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</div>
</div>