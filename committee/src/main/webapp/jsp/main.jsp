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

<title><spring:message code='home' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="w3-container d-flex flex-column mt-5"
		style="padding-left: 16%;">


		<div style="width: 200px">
			<img src="data:image/jpg;base64,${user.image}" alt="image"
				style="width: 100%; border-radius: 50%;">
		</div>

		<div class="mt-3" style="width: 71%">
			<p>
				<b><spring:message code='firstName' />: </b>${user.firstName}</p>
			<p>
				<b><spring:message code='lastName' />: </b>${user.lastName}</p>
			<p>
				<b><spring:message code='email' />: </b>${user.email}</p>
		</div>
	</div>
</body>
</html>