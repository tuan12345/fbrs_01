<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>

<spring:url value="/assets/img/book" var="img"></spring:url>
<spring:url value="/books" var="urlBook"></spring:url>
<!--start Bootstrap  -->
<spring:url value="/assets/img/book/1.jpg" var="book" />
<spring:url value="/assets/js/owl.carousel.min.js"
	var="jqueryOwlCarousel" />
<spring:url value="/assets/js/jquery.meanmenu.js" var="jqueryMeanmenu" />
<spring:url value="/assets/js/wow.min.js" var="jqueryWow" />
<spring:url value="/assets/js/main.js" var="jqueryMain" />

<!---end Bootstrap   -->
<div class="slider-container">
	<!-- Slider Image -->
</div>
<!-- home slider end -->
<!-- banner-area start -->
<div class="banner-area pad-60"></div>
<!-- banner-area end -->
<div class="category-area category-area-2 pad-60">
	<div class="container">
		<div class="row">
			<div class="section-title">
				<h2>${Categorys.get(0) }</h2>
				<div class="title-icon">
					<span><i class="fa fa-angle-left"></i> <i
						class="fa fa-angle-right"></i></span>
				</div>
			</div>
		</div>

	</div>
	
	<!-- show profile -->
	<div class="container">
		<div class="col-xs-4">
			<c:if test="${showFollow}">
				<h3>Follow</h3>
				<c:choose>
					<c:when test="${follow != null}">
						<form action="">
							
							<button type="button" class="btn btn-warning">Unfollow</button>
						</form>
					</c:when>
					<c:otherwise>
						<button type="button" class="btn btn-success">Follow</button>
					</c:otherwise>
				</c:choose>
				
			</c:if>
			
		</div>
		<div class="col-xs-8">
			 <c:choose>
			 	<c:when test="${notFoundUser != null}">
			 		<h3 class="text-center">${notFoundUser}</h3>
			 	</c:when>
			 	 <c:otherwise>
			 	 	<h3 class="text-center">Profile</h3>
					<p>
						<h3><strong>Name: </strong> ${userProfile.name}</h3>
						<h3><strong>Email: </strong> ${userProfile.email}</h3>
						<h3><strong>Role: </strong> ${userProfile.role.name}</h3>
					</p>
			 	 </c:otherwise>
			 </c:choose>
			
		</div>
	</div>
</div>
<!--start Bootstrap  -->
<script src="${jquerymin }" type="text/javascript"></script>
<script src="${jqueryOwlCarousel }" type="text/javascript"></script>
<script src="${jqueryMeanmenu }" type="text/javascript"></script>
<script src="${jqueryWow }" type="text/javascript"></script>
<script src="${jqueryMain }" type="text/javascript"></script>
<!--end Bootstrap  -->