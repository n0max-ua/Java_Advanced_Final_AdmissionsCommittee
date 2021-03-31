<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div class="w3-sidebar w3-bar-block sidebar b-s"
	style="background-color: lightgrey">

	<h6 class="heading">
		<b><spring:message code='s.title' /></b>
	</h6>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<a href="/admin" class="w3-bar-item w3-button font-weight-bold t-s"><spring:message
				code='home' /></a>
		<br>
		<a href="/createFaculty"
			class="w3-bar-item w3-button font-weight-bold t-s"><spring:message
				code='s.addFaculty' /></a>
		<a href="/registrations"
			class="w3-bar-item w3-button font-weight-bold t-s"><spring:message
				code='s.check' /></a>
		<br>
	</sec:authorize>

	<sec:authorize access="hasRole('ROLE_APPROVED')">
		<a href="/main" class="w3-bar-item w3-button font-weight-bold t-s"><spring:message
				code='home' /></a>
		<br>
		<a href="/faculties"
			class="w3-bar-item w3-button font-weight-bold t-s"><spring:message
				code='s.faculties' /></a>
		<br>
	</sec:authorize>

	<sec:authorize access="hasRole('ROLE_USER')">
		<a href="/home" class="w3-bar-item w3-button font-weight-bold t-s"><spring:message
				code='home' /></a>
		<br>
		<a href="/createCertificate"
			class="w3-bar-item w3-button font-weight-bold t-s"><spring:message
				code='s.addInformation' /></a>
		<br>
	</sec:authorize>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<a class="w3-bar-item w3-button font-weight-bold t-s"
			onclick="document.forms['logoutForm'].submit()"><spring:message
				code='s.logout' /></a>
	</c:if>
</div>