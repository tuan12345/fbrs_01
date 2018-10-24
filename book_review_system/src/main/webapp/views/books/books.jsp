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

		<div class="row" >
			<c:forEach items="${books}" var="bookInfo">
				<!-- single-product start -->
				<div class="col-md-3 mt-3">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img
								src="${img }/${bookInfo.image}" alt="" />

							</a>
							<!-- <span class="tag-line">new</span> -->
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal">
										<!-- <i
										class="fa fa-search"></i></a> <a href="#"> --> <i
										class="fa fa-heart"></i>
									</a>
								</div>
								<div class="button-cart">
									<button>
										<!-- <i class="fa fa-detail"></i> -->
										View Detail
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">${bookInfo.tittle }</a>
							</h3>
							<!-- <div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<span class="old">$80.11</span>
							</div> -->
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
		<!-- row 2 -->
	</div>
	<!--start paging  -->
	<div class="paging">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<!--Previous  -->
				<c:choose>
					<c:when test="${curentPage==1 }">
						<li class="disabled"><a class="page-link" href="#">Previous</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${urlBook }?page=${curentPage - 1 }">Previous</a></li>
					</c:otherwise>
				</c:choose>
				<!--End Previous  -->
				<!--Pages  -->
				<c:forEach begin="1" end="${page }" var="val">
					<li class="page-item"><a class="page-link"
						href="${urlBook }?page=${val }">${val}</a></li>
				</c:forEach>
				<!--End Pages  -->
				<!-- Next -->
				<c:choose>
					<c:when test="${curentPage==page }">
						<li class="disabled"><a class="page-link" href="#">Next</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${urlBook}?page=${curentPage+1 }">Next</a></li>
					</c:otherwise>
				</c:choose>
				<!--End Next  -->
				<!-- start First -->
				<c:choose>
					<c:when test="${curentPage==1 }">
						<li class="disabled"><a class="page-link" href="#">First</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="${urlBook }?page=${1 }">First</a></li>
					</c:otherwise>
				</c:choose>
				<!--End First  -->

			</ul>
		</nav>
	</div>
	<!--<!--end paging  -->
</div>
<!--start Bootstrap  -->
<script src="${jquerymin }" type="text/javascript"></script>
<script src="${jqueryOwlCarousel }" type="text/javascript"></script>
<script src="${jqueryMeanmenu }" type="text/javascript"></script>
<script src="${jqueryWow }" type="text/javascript"></script>
<script src="${jqueryMain }" type="text/javascript"></script>
<!--end Bootstrap  -->