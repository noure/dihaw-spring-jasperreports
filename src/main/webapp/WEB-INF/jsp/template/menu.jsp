<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:url value="/" var="helloUrl" />
<spring:url value="/about" var="aboutUrl" />
<spring:url value="/showPdfPage/getPdf" var="showPdfPage" />

<div class="menu">


	<ul>
		<li ${fn:contains(pageContext.request.requestURI, 'about') ? 'class="selected"' : ''}>
			<a href="${aboutUrl}"><spring:message code="menu.about" /></a>
		</li>
		<li ${fn:contains(pageContext.request.requestURI, 'hello') ? 'class="selected"' : ''}>
			<a href="${helloUrl}"><spring:message code="menu.hello" /></a>
		</li>
		<li ${fn:contains(pageContext.request.requestURI, 'showPdfPage') ? 'class="selected"' : ''}>
			<a href="${showPdfPage}"><spring:message code="menu.jasperReport" /></a>
		</li>
	</ul>
</div> 
