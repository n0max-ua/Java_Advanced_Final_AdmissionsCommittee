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

<title>Create faculty</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	
</head>

<body>

	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="container">

		<form:form method="POST" modelAttribute="facultyForm"
			class="form-signin">
			<h2 class="form-heading">Create faculty</h2>

			<input class="form-control" type="text" name="title"
				placeholder="Title" required />
			<textarea class="form-control" name="description" rows="10" cols="5"
				placeholder="Description" required></textarea>
			<input class="form-control" list="subjects" name="firstSubject"
				placeholder="First subject" required>
			<input class="form-control" list="subjects" name="secondSubject"
				placeholder="Second subject" required>
			<input class="form-control" list="subjects" name="thirdSubject"
				placeholder="Third subject" required>
			<input class="form-control" type="number" name="passingMark"
				placeholder="Passing mark" min="0" max="100" required />
			<input class="form-control" type="number" name="totalStudents"
				placeholder="Total students" min="0" required />
			<button class="btn btn-primary" type="submit">Create</button>

			<datalist id="subjects">
				<option value="Math">
				<option value="History">
				<option value="Physics">
				<option value="Biology">
				<option value="Chemistry">
				<option value="English">
			</datalist>

		</form:form>

	</div>

</body>
</html>