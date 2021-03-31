<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title><spring:message code='r.create' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>

	<div class="container" style="margin-top: 15%;">

		<form:form method="POST" modelAttribute="userForm" class="form-signin"
			style="border-radius: 5%; padding: 1%; box-shadow: 0px 0px 20px 8px;">
			<h2 class="form-heading">
				<spring:message code='r.registration' />
			</h2>

			<input class="form-control" type="text" name="firstName"
				placeholder="<spring:message code='firstName'/>" required />
			<input class="form-control" type="text" name="lastName"
				placeholder="<spring:message code='lastName'/>" required />
			<input class="form-control" type="text" name="email"
				placeholder="<spring:message code='email'/>" required />
			<input class="form-control" type="password" name="password"
				placeholder="<spring:message code='password'/>" required />
			<input class="form-control" type="password" name="passwordConfirm"
				placeholder="<spring:message code='r.confirmPassword'/>" required />

			<button class="btn btn-lg btn-primary btn-block" type="submit">
				<spring:message code='r.create' />
			</button>
		</form:form>
	</div>
</body>
</html>