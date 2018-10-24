
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!--parameter url  -->
<spring:url value="/books" var="bookUrl"></spring:url>
<spring:url value="/assets/img/bookstor_compact.png" var="icon" />
<header class="header-pos sticky-top">
	<!-- header-bottom-area start -->
	<div class="header-bottom-area">
		<div class="container-fluid">
			<div class="inner-container">
				<div class="row">
					<div class="col-md-2 col-sm-4 col-xs-5">
						<div class="logo">
							<a href="index.html"><img src="${icon }" /></a>
						</div>
					</div>
					<div class="col-md-5 hidden-xs hidden-sm">
						<div class="main-menu">
							<nav>
								<ul>
									<li><a href="http://bit.do/bromq">home</a></li>
									<li><a href="${bookUrl }">Book</a></li>

									<li><a href="contact.html">contact</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-md-3 hidden-xs hidden-sm" data-list-title="${titles }" id="list-title">
					<spring:url value="Search" var="searchActionUrl" />
						<form class="navbar-form navbar-left" action="${searchActionUrl }" method="get">
							<div class="input-search">
								<ul>
									<li>
									<input id="search" type="text" name="search"
										class="form-control" placeholder="Search">
										
										</li>
									<li>
										<button class="btn btn-search" type="submit">
											<i class="fa fa-search"></i>
										</button>
									</li>

								</ul>
								 
								 <label class="checkbox-inline"><input name="input"
									type="checkbox" value="">Category</label> <label
									class="checkbox-inline"><input id="checkTitle" type="checkbox" value="" >Title</label>
							</div>
						</form>
					</div>
					<div class="col-md-2 col-sm-8 col-xs-7 header-right">
						<div class="user-meta">
							<a href="#"><i class="fa fa-cog"></i></a>
							<ul>
								<li><a href="#">My Account</a></li>
								<li><a href="#">Wish list</a></li>
								<li><a href="#">Checkout</a></li>
								<li><a href="#">Testimonial</a></li>
								<li><a href="#">Log in</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>