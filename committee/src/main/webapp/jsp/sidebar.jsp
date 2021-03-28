<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div class="w3-sidebar w3-bar-block sidebar" style="background-color: lightgrey; box-shadow: 1px 0px 13px 4px;">
	
	<h4 class="w3-bar-item">${pageContext.request.userPrincipal.name}</h4>
	
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a href="/admin" class="w3-bar-item w3-button font-weight-bold">Home</a> <br> 
			<a href="/createFaculty" class="w3-bar-item w3-button font-weight-bold">Add faculty</a> 
			<a href="/registrations" class="w3-bar-item w3-button font-weight-bold">Check registrations</a> <br>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_APPROVED')">
			<a href="/main" class="w3-bar-item w3-button font-weight-bold">Home</a><br>
			<a href="/faculties" class="w3-bar-item w3-button font-weight-bold">Faculties</a><br>
		</sec:authorize>
		
		<sec:authorize access="hasRole('ROLE_USER')">
			<a href="/home" class="w3-bar-item w3-button font-weight-bold">Home</a><br>
			<a href="/createCertificate" class="w3-bar-item w3-button font-weight-bold">Add information</a><br>
		</sec:authorize>
		
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			<a class="w3-bar-item w3-button font-weight-bold"
				onclick="document.forms['logoutForm'].submit()">Logout</a>
	
		</c:if>
</div>