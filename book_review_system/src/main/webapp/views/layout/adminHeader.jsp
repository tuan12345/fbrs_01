<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<header class="header dark-bg">
	<div class="toggle-nav">
		<div class="icon-reorder tooltips"
			data-original-title="Toggle Navigation" data-placement="bottom">
			<i class="icon_menu"></i>
		</div>
	</div>

	<!--logo start-->
	<spring:url value="/" var="home" />
	<a href="${home}" class="logo">Nice <span class="lite">Admin</span></a>
	<!--logo end-->

	<div class="nav search-row" id="top_menu"></div>

	<div class="top-nav notification-row">
		<!-- notificatoin dropdown start-->
		<ul class="nav pull-right top-menu">
			<!-- user login dropdown start-->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <span class="profile-ava">
						<img alt="" src="img/avatar1_small.jpg">
				</span> <span class="username">ADMIN</span> <b class="caret"></b>
			</a>
				<ul class="dropdown-menu extended logout">
					<div class="log-arrow-up"></div>
					<li class="eborder-top"><a href="#"><i
							class="icon_profile"></i> My Profile</a></li>
					<li><a href="login.html"><i class="icon_key_alt"></i> Log
							Out</a></li>
				</ul></li>
			<!-- user login dropdown end -->
		</ul>
		<!-- notificatoin dropdown end-->
	</div>
</header>
<!--header end-->

<!--sidebar start-->
<aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu">
			<li class="active"><a class="" href="${home}"> <i
					class="icon_house_alt"></i> <span>Dashboard</span>
			</a></li>
			<spring:url value="/user" var="user" />
			<li><a class="" href="${user}"> <i class="icon_genius"></i>
					<span>User</span>
			</a></li>
			<li><a class="" href="chart-chartjs.html"> <i
					class="icon_piechart"></i> <span>Charts</span>

			</a></li>		
		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->