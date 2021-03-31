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

<title><spring:message code='cf.create' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="container mt-3">

		<form:form method="POST" modelAttribute="facultyForm"
			class="form-signin d-flex justify-content-center flex-column">
			
			<h2 class="form-heading">
				<spring:message code='cf.create' />
			</h2>

			<input class="form-control" type="text" name="title"
				placeholder="<spring:message code='cf.title'/>" required />
			<textarea class="form-control" name="description" rows="10" cols="5"
				placeholder="<spring:message code='cf.description'/>" required></textarea>
			<input class="form-control" list="subjects" name="firstSubject"
				placeholder="<spring:message code='cf.firstSubject'/>" required>
			<input class="form-control" list="subjects" name="secondSubject"
				placeholder="<spring:message code='cf.secondSubject'/>" required>
			<input class="form-control" list="subjects" name="thirdSubject"
				placeholder="<spring:message code='cf.thirdSubject'/>" required>
			<input class="form-control" type="number" name="passingMark"
				placeholder="<spring:message code='passingMark'/>" min="0" max="100"
				required />
			<input class="form-control" type="number" name="totalStudents"
				placeholder="<spring:message code='cf.totalStudents'/>" min="0"
				required />
			<button class="btn btn-primary" type="submit">
				<spring:message code='cf.create' />
			</button>

			<datalist id="subjects">
				<option value="<spring:message code='subject1'/>">
				<option value="<spring:message code='subject2'/>">
				<option value="<spring:message code='subject3'/>">
				<option value="<spring:message code='subject4'/>">
				<option value="<spring:message code='subject5'/>">
				<option value="<spring:message code='subject6'/>">
			</datalist>

		</form:form>
	</div>
</body>
</html>