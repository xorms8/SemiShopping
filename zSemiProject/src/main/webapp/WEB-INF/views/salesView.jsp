<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!doctype html>
<html>
<head>

<meta charset="utf-8">
<title>orderView</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">
	$(function() {
		//버튼 클릭시 배송정보 변경 jquery
		$("#delivery_Btn1").click(function() {
			$(".delivery").val("배송 중");
			run();
		});

		$("#delivery_Btn2").click(function() {
			$(".delivery").val("배송 완료");
			run();

		});

		function run() {
			$("#deliveryForm").submit();
		}

	})
</script>
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
		<div class="container">
			<h1 style="text-align: center;">F2T Perfume 관리자 페이지</h1>
			<h2 style="text-align: center;">향기로운 날입니다,
				${sessionScope.mNAME}님 :)</h2>
			<hr />
			<div class="col-sm-1">
				<aside>
					<ul class="list-group">
						<li><h2>MENU</h2></li>
						<li><a href="productInsert.do">상품 등록</a></li>
						<li><a href="productList.do">상품 목록</a></li>
						<li><a href="memberList.do">회원 목록</a></li>
						<li><a href="salesList.do">판매 목록</a></li>
					</ul>
				</aside>
			</div>
			<!-- S :본문   -->
			<div id="container_box">

				<!-- S: 넘어온 주문 번호의 배송 정보 -->

				<div class="container">
					<div class="orderInfo">
						<form class="form-horizontal" method="post" id ="deliveryForm" action="deliveryUpdate.do">
							<c:forEach items="${orderView}" var="orderView"
								varStatus="status">
								<c:if test="${status.first}">
								
								<input type="hidden" name="oID" value="${orderView.oID}"/>
								<input type="hidden" name="delivery" class="delivery" value=""/>
								
									<div class="form-group">
										<label class="control-label col-sm-1" for="oNAME">받는사람
										</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="oNAME"
												name="oNAME" value="${orderView.oNAME}" readonly>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-1" for="oPHONE">주소</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="oPHONE"
												name="oADDRESS1"
												value="${orderView.oADDRESS1} ${orderView.oADDRESS2} ${orderView.oADDRESS3}" readonly>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-1" for="oNAME">결제금액</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="oNAME"
												name="oNAME"
												value=<fmt:formatNumber pattern="###,###,###"
										value="${orderView.oAMOUNT}" />
												readonly>
										</div>
									</div>
									<%-- <div class="form-group">
										<label class="control-label col-sm-1" for="delivery">주문상태</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="delivery"
												name="delivery" value="${orderView.delivery }" readonly>
										</div>
									</div> --%>
									
									<div class="form-group">
										<label class="control-label col-sm-1" for="delivery">주문상태</label>
										<div class="col-sm-6">
											"${orderView.delivery }"
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-1" for="delivery">배송상태 변경</label>
										<div class="col-sm-6">
											<button type="button" class="btn btn-info" id="delivery_Btn1">배송 중</button>
											<button type="button" class="btn btn-success" id="delivery_Btn2">배송 완료</button>
										</div>
									</div>


								</c:if>
							</c:forEach>
						</form>
					</div>
				</div>

				<!-- E: 넘어온 주문 번호의 배송 정보 -->

				<!-- S: 넘어온 주문 번호의 주문 상세 내역 (제품과 갯수들) -->

				<div class="table-content table-responsive">
					<table border="1">
						<thead>
							<tr>
								<th class="product-thumbnail">상품사진</th>
								<th class="product-name">상품명</th>
								<th class="product-price">가격</th>
								<th class="product-stock">수량</th>
								<th class="product-subtotal">합계 금액</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orderView}" var="orderView">
								<tr>
									<td><img
										src="/zSemiProject/resources/upload/${orderView.pFname}" /></td>
									<td>${orderView.pNAME}</td>
									<td><fmt:formatNumber pattern="###,###,###"
											value="${orderView.pPRICE}" />원</td>
									<td>${orderView.cartSTOCK}개</td>
									<td><fmt:formatNumber pattern="###,###,###"
											value="${orderView.pPRICE * orderView.cartSTOCK}" />원</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- E: 넘어온 주문 번호의 주문 상세 내역 (제품과 갯수들) -->
			</div>
		</div>
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