<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>header</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">



<!-- All css files are included here. -->
<!-- Bootstrap fremwork main css -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- Owl Carousel main css -->
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="resources/css/core.css">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet" href="resources/css/shortcode/shortcodes.css">

<!-- Responsive css -->
<link rel="stylesheet" href="resources/css/responsive.css">
<!-- User style -->
<link rel="stylesheet" href="resources/css/custom.css">
<!-- Theme main style -->
<link rel="stylesheet" href="resources/css/style.css">


</head>
<body>
	<!-- Start Header Style -->
	<header id="header" class="htc-header header--3 bg__white">
		<!-- Start Mainmenu Area -->
		<div id="sticky-header-with-topbar"
			class="mainmenu__area sticky__header">
			<div class="container" style="height: 100px;">
				<div class="row">
					<div class="col-md-2 col-lg-2 col-sm-3 col-xs-3">
						<div class="logo">
							<a href="index.jsp">F2T PERFUME
							</a>
						</div>
					</div>
					<!-- Start MAinmenu Ares -->
					<div class="col-md-8 col-lg-8 col-sm-6 col-xs-6">
						<nav class="mainmenu__nav hidden-xs hidden-sm">
							<ul class="main__menu">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="shop.do">Shop</a></li>
								<li><a href="about.do">about</a></li>
							</ul>
						</nav>
						<div class="mobile-menu clearfix visible-xs visible-sm">
							<nav id="mobile_dropdown">
								<ul>
									<li><a href="index.jsp">Home</a></li>
									<li><a href="shop.do">SHOP</a> <!-- <ul>
                                                <li><a href="portfolio-card-box-2.html">portfolio</a></li>
                                                <li><a href="single-portfolio.html">Single portfolio</a></li>
                                            </ul> --></li>
									
									<li><a href="about.do">ABOUT</a> <!--  <ul>
                                                <li><a href="about.html">about</a></li>
                                                <li><a href="customer-review.html">customer review</a></li>
                                                <li><a href="shop.html">shop</a></li>
                                                <li><a href="shop-sidebar.html">shop sidebar</a></li>
                                                <li><a href="product-details.html">product details</a></li>
                                                <li><a href="cart.html">cart</a></li>
                                                <li><a href="wishlist.html">wishlist</a></li>
                                                <li><a href="checkout.html">checkout</a></li>
                                                <li><a href="team.html">team</a></li>
                                                <li><a href="login.do">login & register</a></li>
                                            </ul> --></li>
							
								</ul>
							</nav>
						</div>
					</div>
					<!-- End MAinmenu Ares -->
					<div class="col-md-2 col-sm-4 col-xs-3">
						<ul class="menu-extra">
							<!-- 로그인,카트 직속 -->
							<!-- 로그인 세션X(비 로그인 상태) -->
							<c:if test="${member == null }">
								<li><a href="login.do"><span class="ti-user"></span></a></li>
							</c:if>
							<!-- 로그인 세션(로그인상태) -->
							<c:if test="${member != null }">
								<!-- 관리자/ 로그인 상태 이면서 verify 값이 9인 계정이 로그인 ! -->
								<!-- 이미 oracle DB에서 설정함 -->
								<c:if test="${member.verify == 9 && member.verify != 0 }">
									<li><a href="index2.do"><span class="ti-crown"></span></a></li>
								</c:if>

								<li><a href="logout.do"><span class="ti-shift-left"></span></a></li>

								<!-- 로그인 상태 이면서 verify 값이 9가 아닌 (일반 유저) -->
								<!-- 마이페이지가 보이게 구분 한 코드 -->
								<c:if test="${member.verify != 9 && member.verify == 0}">
									<li><a href="myPage.do"><span class="ti-id-badge"></span></a></li>
								</c:if>

							</c:if>
							<li class="cart__menu"><a href="cart.do"><span
									class="ti-shopping-cart"></span></a></li>
							<li class="toggle__menu hidden-xs hidden-sm"><span
								class="ti-menu"></span></li>
						</ul>
					</div>
				</div>
				<div class="mobile-menu-area"></div>
			</div>
		</div>
		<!-- End Mainmenu Area -->
		<hr />
	</header>

	<!-- End Header Style -->


	</div>
	<!-- End Offset Wrapper -->


	<!-- jquery latest version -->

	<script src="resources/js/vendor/jquery-1.12.0.min.js"></script>
	<!-- Bootstrap framework js -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- All js plugins included in this file. -->
	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<!-- Waypoints.min.js. -->
	<script src="resources/js/waypoints.min.js"></script>
	<!-- Main js file that contents all jQuery plugins activation. -->
	<script src="resources/js/main.js"></script>
	<!-- Modernizr JS -->
	<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
</body>
</html>