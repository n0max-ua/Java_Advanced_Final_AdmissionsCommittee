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

<title><spring:message code='f.title' /></title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="w3-container mt-5"
		style="display: flex; flex-wrap: wrap; padding-left: 16%;">
		
		<h2>
			<spring:message code='f.title' />
		</h2>
		
		<c:if test="${not empty faculties}">

			<c:forEach items="${faculties}" var="faculty">

				<div class="w3-card-4"
					style="width: 100%; margin: 10px; box-shadow: 1px 0px 13px 4px;">

					<div class="w3-container w3-light-grey" style="padding: 1%;">

						<h4>
							<spring:message code='faculty' />
							: ${faculty.title}
						</h4>
						<p>
							<b><spring:message code='cf.description' />: </b>${faculty.description}</p>
						<p>
							<b><spring:message code='f.orientation' />: </b>
							${faculty.firstSubject} ${faculty.secondSubject}
							${faculty.thirdSubject}
						</p>

						<a href="faculties/${faculty.id}" class="btn btn-primary"><spring:message
								code='details' /></a>

					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>