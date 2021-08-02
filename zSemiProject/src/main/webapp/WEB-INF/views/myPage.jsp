<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!doctype html>
<html>
<head>

<meta charset="utf-8">
<title>F2T Perfume Mypage</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
	font-family: '맑은 고딕', verdana;
	padding: 0;
	margin: 0;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
	 
}

div#root {
	width: 90%;
	margin: 0 auto;
}

/* header#header {
	font-size: 60px;
	padding: 20px 0;
}

header#header h1 a {
	color: #000;
	font-weight: bold;
} */
nav#nav {
	padding: 10px;
	text-align: right;
}

nav#nav ul li {
	display: inline-block;
	margin-left: 10px;
}

   section#container {
	padding: 20px 0;
	border-top: 2px solid #eee;
	border-bottom: 2px solid #eee;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

aside {
	float: left;
	width: 200px;
}

div#container_box {
	float: right;
	width: calc(100% - 200px - 20px);
}

aside ul li {
	text-align: center;
	margin-bottom: 10px;
}

footer#footer {
	background: #f9f9f9;
	padding: 20px;
}

footer#footer ul li {
	display: inline-block;
	margin-right: 10px;
}

aside ul li a {
	display: block;
	width: 100%;
	padding: 10px 0;
}

aside ul li a:hover {
	background: #eee;
}

#container_box table td {
	width: 100px;
}

.inputArea {
	margin: 10px 0;
}
</style>
</head>
<body>
	<div id="root">
		<!-- S: 헤더 부분 시작 -->
		<header id="header">

			<div id="header_box">
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
			</div>
		</header>
		<!-- E: 헤더 부분 끝 -->


		<!-- S: 본문 영역 시작 -->

		<section id="container">
			<h1 style="text-align: center;">Mypage</h1>
			<h2 style="text-align: center;">향기로운 날입니다, ${sessionScope.mNAME}님 :)</h2>
			<hr />
			<div class="col-sm-1">
				<aside>
					<ul class="list-group">
						<li><h2>MENU</h2></li>
						<li><a href="orderList.do">주문 목록</a></li>
						<li><a href="memberInfo.do?mID=${sessionScope.userName}">회원
								정보 관리</a></li>

					</ul>
				</aside>
			</div>
			<!-- S :본문   -->

				<div class="container">
					<div class="jumbotron">
						<img src="/zSemiProject/resources/images/myPage.png"/>
						<p>F2T PERFUME</p>
					</div>
				</div>
			<!-- E :본문 목록  -->
		</section>
	</div>
	<!-- E: 본문 영역 끝 -->


	<!-- S: 푸터 영역 시작 -->
	<footer id="footer">
		<div id="footer_box">
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
		</div>
	</footer>

	<!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>