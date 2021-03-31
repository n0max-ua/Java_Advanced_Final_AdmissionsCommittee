<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String serverPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
String basePath = serverPath + path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%=basePath%>" />

<title><spring:message code='rd.title' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="w3-container  mt-5"
		style="display: flex; flex-wrap: wrap; padding-left: 16%;">
		
		<h2>
			<spring:message code='rd.title' />
		</h2>
		
		<div class="w3-card-4"
			style="width: 100%; margin: 10px; box-shadow: 1px 0px 13px 4px;">

			<div class="w3-container w3-light-grey p-3">

				<p>
					<b><spring:message code='faculty' />: </b>
					${registration.faculty.getTitle()}
				</p>
				<p>
					<b><spring:message code='passingMark' />: </b>
					${registration.faculty.getPassingMark()}
				</p>
				<p>
					<b><spring:message code='email' />: </b>
					${registration.user.getEmail()}
				</p>
				<p>
					<b><spring:message code='rd.userMark' />: </b> ${userMark}
				</p>

				<div class="d-flex flex-row" style="width: 200px;">
					<form:form method="POST"
						action="/registrations/${registration.id}/apply"
						class="form-signin">
						<button class="btn btn-primary" type="submit">
							<spring:message code='rd.apply' />
						</button>
					</form:form>
					<form:form method="POST"
						action="/registrations/${registration.id}/delete"
						class="form-signin">
						<button class="btn btn-danger" type="submit">
							<spring:message code='rd.refuse' />
						</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>