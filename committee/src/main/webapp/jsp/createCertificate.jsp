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

<title>Create certificate</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="container">

		<form:form method="POST" modelAttribute="createCertificate"
			class="form-signin">
			<h2 class="form-heading">Create certificate</h2>

			<input class="form-control" type="number" name="math"
				placeholder="Math mark" min="0" max="100" required />
			<input class="form-control" type="number" name="history"
				placeholder="History mark" min="0" max="100" required>
			<input class="form-control" type="number" name="physics"
				placeholder="Physics mark" min="0" max="100" required />
			<input class="form-control" type="number" name="biology"
				placeholder="Biology mark" min="0" max="100" required />
			<input class="form-control" type="number" name="chemistry"
				placeholder="Chemistry mark" min="0" max="100" required />
			<input class="form-control" type="number" name="english"
				placeholder="English mark" min="0" max="100" required />

			<button class="btn btn-lg btn-primary btn-block" type="submit">Create</button>

		</form:form>

	</div>

</body>
</html>