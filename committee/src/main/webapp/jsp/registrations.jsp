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

<title><spring:message code='fr.title' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="container mt-5" style="width: 70%">

		<h2>
			<spring:message code='fr.title' />
		</h2>
		
		<table class="table table-striped"
			style="box-shadow: 1px 0px 13px 4px">
			<thead>
				<tr>
					<th>ID</th>
					<th><spring:message code='faculty' /></th>
					<th><spring:message code='email' /></th>
					<th></th>
				</tr>
			</thead>

			<c:if test="${not empty registrations}">
				<c:forEach items="${registrations}" var="registrations">

					<tbody>
						<tr>
							<td>${registrations.id}</td>
							<td>${registrations.faculty.getTitle()}</td>
							<td>${registrations.user.getEmail()}</td>
							<td><a href="/registrations-details/${registrations.id}">--->></a></td>
						</tr>
					</tbody>
				</c:forEach>
			</c:if>
		</table>
	</div>

</body>
</html>