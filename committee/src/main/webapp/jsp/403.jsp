<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">

<title><spring:message code='p.title' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>
	<div class="container d-flex flex-column mt-5">
		<div>
			<h3>
				<spring:message code='p.message' />
			</h3>
		</div>
		<br>
		<form action="/logout" method="post">
			<input class="btn btn-lg btn-primary" type="submit"
				value="<spring:message code='p.button'/>" /> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>

	</div>
</body>
</html>