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

<title><spring:message code='ap.title' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="container mt-5">

		<form:form method="POST" modelAttribute="createCertificate"
			class="form-signin d-flex justify-content-center flex-column"
			enctype="multipart/form-data">
			<h2 class="form-heading">
				<spring:message code='ap.title' />
			</h2>


			<input type="file" name="photo" required />

			<button class="btn btn-lg btn-primary btn-block mt-3" type="submit">
				<spring:message code='ap.title' />
			</button>

		</form:form>

	</div>

</body>
</html>