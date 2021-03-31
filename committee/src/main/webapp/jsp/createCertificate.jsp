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

<title><spring:message code='cs.title' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="container mt-3">

		<form:form method="POST" modelAttribute="createCertificate"
			class="form-signin d-flex justify-content-center flex-column">
			
			<h2 class="form-heading">
				<spring:message code='cs.title' />
			</h2>

			<input class="form-control" type="number" name="math"
				placeholder="<spring:message code='subject1'/>" min="0" max="100"
				required />
			<input class="form-control" type="number" name="history"
				placeholder="<spring:message code='subject2'/>" min="0" max="100"
				required>
			<input class="form-control" type="number" name="physics"
				placeholder="<spring:message code='subject3'/>" min="0" max="100"
				required />
			<input class="form-control" type="number" name="biology"
				placeholder="<spring:message code='subject4'/>" min="0" max="100"
				required />
			<input class="form-control" type="number" name="chemistry"
				placeholder="<spring:message code='subject5'/>" min="0" max="100"
				required />
			<input class="form-control" type="number" name="english"
				placeholder="<spring:message code='subject6'/>" min="0" max="100"
				required />

			<button class="btn btn-lg btn-primary btn-block" type="submit">
				<spring:message code='cs.title' />
			</button>
		</form:form>
	</div>
</body>
</html>