<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="author" content="">
<spring:url value="/" var="urlHome" />
<spring:url value="/home.jsp" var="homeUrl" />
<spring:url value="/books" var="bookUrl" />
<!--Bootstrap  -->
<spring:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" var="jquery112" />
<spring:url value="/assets/lib/js/jquery-ui.js" var="jqueryUi" />
<spring:url value="/assets/css/font-awesome.min.css" var="frontAwesome" />
<spring:url value="/assets/mycss/style.css" var="style" />
<spring:url value="/assets/mycss/style1.css" var="style1" />
<spring:url value="/assets/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/assets/js/autocomplete/autocomplete.js" var="myjs" />
<spring:url value="/assets/js/header/request.js" var="requestJs" />
<link rel="stylesheet" href="${bootstrapCss}" />
<link rel="stylesheet" href="${frontAwesome}" />
<link rel="stylesheet" href="${style}" />
<link rel="stylesheet" href="${style1}" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" />
<script src="${jquery112 }" type="text/javascript"></script>
<script src="${jqueryUi }" type="text/javascript"></script>
<script src="${myjs }" type="text/javascript"></script>
<script src="${requestJs }" type="text/javascript"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<spring:url value="/assets/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/assets/mycss/style.css" var="style" />

<link rel="stylesheet" href="${bootstrapCss}" />
<link rel="stylesheet" href="${style}" />
<title><tiles:insertAttribute name="title" ignore="true" /></title>

</head>
<body>

	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />

</body>

</html>