<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
	<!--start Bootstrap  -->
<spring:url value="/assets/img/book/1.jpg" var="book" />
<spring:url value="/assets/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/assets/css/owl.carousel.css" var="owlCarousel" />
<spring:url value="/assets/css/font-awesome.min.css" var="frontAwesome" />
<spring:url value="/assets/mycss/style.css" var="style" />
<spring:url value="/assets/js/vendor/jquery-1.12.0.min.js" var="jquerymin" />
<spring:url value="/assets/js/owl.carousel.min.js"
	var="jqueryOwlCarousel" />
<spring:url value="/assets/js/jquery.meanmenu.js" var="jqueryMeanmenu" />
<spring:url value="/assets/js/wow.min.js" var="jqueryWow" />
<spring:url value="/assets/js/main.js" var="jqueryMain" />
<link rel="stylesheet" href="${bootstrapCss}" />
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
				<h2>List All Book</h2>
				<div class="title-icon">
					<span><i class="fa fa-angle-left"></i> <i
						class="fa fa-angle-right"></i></span>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="product-curosel">
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-detail"></i> View Detail
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem i</a>
							</h3>
							<div class="price">
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
								<span class="fa fa-star-o"></span>
								<!-- <span class="old">$80.11</span> -->
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
			</div>
		</div>
		<!-- row 2 -->
		<div class="row">
			<div class="section-title"></div>
		</div>

		<div class="row">
			<div class="product-curosel">
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$70.00</span> <span class="old">$80.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />
							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$80.00</span> <span class="old">$90.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />
							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$80.00</span> <span class="old">$90.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$80.00</span> <span class="old">$90.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$80.00</span> <span class="old">$90.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$80.00</span> <span class="old">$90.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$80.00</span> <span class="old">$90.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
				<!-- single-product start -->
				<div class="col-md-12">
					<div class="single-product">
						<div class="product-img">
							<a href="single-product.html"> <img src="${book }" alt="" />

							</a> <span class="tag-line">new</span>
							<div class="product-action">
								<div class="button-top">
									<a href="#" data-toggle="modal" data-target="#productModal"><i
										class="fa fa-search"></i></a> <a href="#"><i
										class="fa fa-heart"></i></a>
								</div>
								<div class="button-cart">
									<button>
										<i class="fa fa-shopping-cart"></i> add to cart
									</button>
								</div>
							</div>
						</div>
						<div class="product-content">
							<h3>
								<a href="single-product.html">Lorem ipsum dolor</a>
							</h3>
							<div class="price">
								<span>$80.00</span> <span class="old">$90.11</span>
							</div>
						</div>
					</div>
				</div>
				<!-- single-product end -->
			</div>
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