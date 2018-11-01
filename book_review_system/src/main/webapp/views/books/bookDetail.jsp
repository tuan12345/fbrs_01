<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
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
<spring:url value="/assets/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/assets/css/owl.carousel.css" var="owlCarousel" />
<spring:url value="/assets/css/font-awesome.min.css" var="frontAwesome" />
<spring:url value="/assets/mycss/style.css" var="style" />
<spring:url value="/assets/css/dialog.css" var="dialogCss" />
<spring:url value="/assets/js/dialog/dialog.js" var="dialogJs" />
<spring:url value="/assets/js/vendor/jquery-1.12.0.min.js"
	var="jquerymin" />
<spring:url value="/assets/js/owl.carousel.min.js"
	var="jqueryOwlCarousel" />
<spring:url value="/assets/js/jquery.meanmenu.js" var="jqueryMeanmenu" />
<spring:url value="/assets/js/wow.min.js" var="jqueryWow" />
<spring:url value="/assets/js/main.js" var="jqueryMain" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<spring:url value="/assets/js/user-script.js" var="userScript" />
<link rel="stylesheet" href="${bootstrapCss}" />
<link rel="stylesheet" href="${dialogCss}" />
<link rel="stylesheet" href="${owlCarousel}" />
<link rel="stylesheet" href="${frontAwesome}" />
<link rel="stylesheet" href="${style}" />
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
				<h2>Book</h2>
				<div class="title-icon">
					<span><i class="fa fa-angle-left"></i> <i
						class="fa fa-angle-right"></i></span>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<form action="review" method="get">
			<div class="row">
				<div class="col-sm-3">
					<img alt="bookImage" src="${img}/${bookInfo.image}" width="200px"
						height="400px">
				</div>
				<input type="hidden" name="id-book" value="${bookInfo.id }">
				<div class="col-sm-9">
					<p>
					<h3>
						<strong>Category: </strong> ${bookInfo.category.name}
					</h3>
					</p>
					<p>
					<h3>
						<strong>Title: </strong> ${bookInfo.tittle}
					</h3>
					</p>
					<p>
					<h3>
						<strong>Author: </strong> ${bookInfo.authorName}
					</h3>
					</p>
					<p>
					<h3>
						<strong>Publish Day: </strong> ${bookInfo.publishDate}
					</h3>
					</p>
					<p>
					<h3>
						<strong>Number of Page: </strong> ${bookInfo.numberOfPage}
					</h3>
					</p>
					<p>
					<h3>
						<strong>Star: </strong> ${bookInfo.avgStar} <i
							class="fa fa-star-o"></i>
					</h3>
					</p>
					<p>
					<h3>
						<strong>Vote: </strong> ${bookInfo.quantityVote}
					</h3>
					</p>
				</div>
			</div>
			<p>
			<h3>User Review</h3>
			</p>
			<div class="riew-container">
				<c:forEach items="${reviews}" var="review">
					<div class="row">
						<div class="col-sm-3">
							<div class="review-lef">
								<spring:url value="/profile" var="profile"></spring:url>
								<p>Write by:<a href="${profile}/${review.getUserInfo().getId()}"> ${review.getUserInfo().getName()}</a></p>
								<p>${review.getCreatedAt()}</p>
							</div>
						</div>
						<div class="col-sm-9">
							<div class="review-right">
								<span>${review.numberOfStar }</span> <span class="fa fa-star-o"></span>
								<p>${review.getContent()}</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-9">
							<div>
							  <button value="${review.id}"  type="button" class="btn btn-primary btn-md showComment">Comment</button>
							  <div id ="comment-${review.id}" class="div-hiden">
							  	
							  </div>
							</div>
						<security:authorize access="isAuthenticated()">
						<spring:url value="/comments" var="addComment"></spring:url>
							<form:form action="${addComment}" method="post" modelAttribute ="CommentInfo">
								<label>Comment:</label> 
								<input type="text" name="content" class="form-control">
								<input type="hidden" name="user.id" value="${currentUser.id}">
								<input type="hidden" name="review.id" value="${review.id}">
								<input type="hidden" name="review.bookInfo.id" value="${bookInfo.id}">
								<button type="submit" class="btn btn-success">Add comment</button>
							</form:form>
						</security:authorize>
						</div>
					</div>
					<hr size="10" class="line">
				</c:forEach>
				<div class="review-footer">
					<security:authorize access="isAuthenticated()">
						<p>
							<spring:url value="/review" var="urlReview"></spring:url>
							<span class="wrapper-write"> <a
								href="${urlReview }?idBook=${bookInfo.id}"
								class="csm-button login-window">Add your review</a>
							</span>
						</p>
					</security:authorize>
					<security:authorize access="isAnonymous()">
						<spring:url value="/login" var="loginUrl"></spring:url>
						<a href="${loginUrl}">Login for add Review</a>
					</security:authorize>
				</div>
			</div>
		</form>
	</div>
</div>

<!--start Bootstrap  -->
<script src="${dialogJs }" type="text/javascript"></script>
<script src="${jquerymin }" type="text/javascript"></script>
<script src="${jqueryOwlCarousel }" type="text/javascript"></script>
<script src="${jqueryMeanmenu }" type="text/javascript"></script>
<script src="${jqueryWow }" type="text/javascript"></script>
<script src="${jqueryMain }" type="text/javascript"></script>
<script src="${userScript}" type="text/javascript"></script>
<!--end Bootstrap  -->