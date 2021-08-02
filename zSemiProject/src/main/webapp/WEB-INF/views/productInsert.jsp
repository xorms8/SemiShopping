<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>F2T Perfume Admin Page</title>
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

.inputArea { margin:10px 0; }


</style>
</head>
<body><c:if test="${sessionScope.member != null }"> 
                                  
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
			<h1 style="text-align: center;">F2T Perfume 관리자 페이지</h1>
			<h2 style="text-align: center;">상품 등록</h2>
			<div class="col-sm-1">
			
				<aside>
					<ul class="list-group">
						<li><h2>MENU</h2></li>
						<li><a href="productInsert.do">상품 등록</a></li>
						<li><a href="productList.do">상품 목록</a></li>
						<li><a href="memberList.do">회원 목록</a></li>
						<li><a href="saleList.do">판매 목록</a></li>
					</ul>
				</aside>
			</div>
			<div id="container_box">
				<!-- S :상품 등록 폼  -->
				<div class="InputArea" id="productInsertForm" style="margin: auto;">
					<form method="post" action="productSave.do" enctype="multipart/form-data">
						
						<div class = "inputArea">
							<label for ="pID">상품 이름</label>
							<input type="text" id="pNAME" name="pNAME"/>
						</div>
						<div class = "inputArea">
							<label for ="pPRICE">상품 가격</label>
							<input type="text" id="pPRICE" name="pPRICE"/>
						</div>
						<div class = "inputArea">
							<label for ="pSTOCK">상품 재고</label>
							<input type="text" id="pSTOCK" name="pSTOCK"/>
						</div>
						<div class = "inputArea">
							<label for ="pFname">상품 파일</label>
							<input type="file" id="pFname" name="file"/>
						</div>
						<div class = "inputArea">
							<label for ="pDETAIL">상품 설명</label>
							<input type="text" id="pDETAIL" name="pDETAIL"/>
						</div>	
							<input type="submit"class="btn btn-success" value="등록"> 
							<input type="reset" class="btn btn-default" value="취소">
						
					</form>
					<!-- E :상품 등록 폼  -->
				</div>
				</div>
		</section>
		<!-- E: 본문 영역 끝 -->


		<!-- S: 푸터 영역 시작 -->
		<footer id="footer">
			<div id="footer_box">
				<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			</div>
		</footer>

	</div>
	<!-- E: Index(Home).jsp 의 div 총괄 끝  -->
	 	</c:if>
</body>
</html>