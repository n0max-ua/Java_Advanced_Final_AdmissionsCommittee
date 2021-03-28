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

<title>Main</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="w3-container"
		style="display: flex; flex-wrap: wrap; padding-left: 16%;">
		<div class="w3-card-4" style="width: 100%; margin: 10px">

			<div class="w3-container w3-center w3-light-grey"
				style="padding: 1%;">

				<p><b>Facuty:</b> ${registration.faculty.getTitle()}</p>
				<p><b>Orientation:</b> 	${registration.faculty.getFirstSubject()},
										${registration.faculty.getSecondSubject()},
										${registration.faculty.getThirdSubject()}</p>
				<p><b>Passing mark:</b> ${registration.faculty.getPassingMark()}</p>
				<br>
				<p><b>User email:</b> ${registration.user.getEmail()}</p>
				<p><b>User mark:</b> ${userMark}</p>

				<form:form method="POST"
					action="/registrations/${registration.id}/apply"
					class="form-signin">
					<button class="btn btn-primary" type="submit">Apply</button>
				</form:form>
				<br>
				<form:form method="POST"
					action="/registrations/${registration.id}/delete"
					class="form-signin">
					<button class="btn btn-danger" type="submit">Refuse</button>
				</form:form>

			</div>

		</div>

	</div>


</body>
</html>