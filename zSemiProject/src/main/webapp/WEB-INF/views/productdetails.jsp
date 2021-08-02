<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>product detail</title>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">

	$(function() {
		
		//수량 plus minus jquery
		
		$(".plus").click(function(){
				
		
			   var num = $(".numBox").val();
			   var plusNum = Number(num) + 1; 
 
			   
			   if(plusNum >= ${product.pSTOCK}) {

				    
			    $(".numBox").val(num); 
			   }else {
			    $(".numBox").val(plusNum);          
			   }
			  });
			  
			  $(".minus").click(function(){
			   var num = $(".numBox").val();
			   var minusNum = Number(num) - 1;
			   
			   if(minusNum <= 0) {
			    $(".numBox").val(num);
			   } else { 
			    $(".numBox").val(minusNum);          
			   }
			  });
			  
		//카트담기 Jquery
			
			$("#cart_btn").click(function(){
				
				var pID = $("#testProductID").val();
				var cartSTOCK = $(".numBox").val();

				var data = {
						pID : pID,
						cartSTOCK : cartSTOCK
				};
				
 				$.ajax({
					url : "addCart.do",
					contentType : "application/x-www-form-urlencoded;charset=UTF-8",
					type : "post",
					data : data,
					success : function(message){
						alert(message);
					}
				}); 
				
				
			});  
			
			//리뷰 ajax
			$("#iR").click(function () {
	          document.getElementById("review-form").submit();
	     	 });
			
	
		 
	})
	
	
</script>

<style>
.plus {
	background: none;
	border: none;
}

.minus {
	background: none;
	border: none;
}
</style>

</head>
<body>
	<div id="root">
		<!-- S: Index(Home).jsp 의 div 총괄 시작 -->
		<!-- S: 헤더 부분 시작 -->
		<header id="header">
			<div id="header_box">
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
			</div>
		</header>
		<!-- E: 헤더 부분 끝 -->


		<!-- S: 본문 영역 시작 -->

		<div class="body__overlay"></div>
		<!-- Start Offset Wrapper -->
		<div class="offset__wrapper">
			<!-- Start Search Popap -->
			<div class="search__area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="search__inner">
								<form action="#" method="get">
									<input placeholder="Search here... " type="text">
									<button type="submit"></button>
								</form>
								<div class="search__close__btn">
									<span class="search__close__btn_icon"><i
										class="zmdi zmdi-close"></i></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Search Popap -->
			<!-- Start Offset MEnu -->
			<div class="offsetmenu">
				<div class="offsetmenu__inner">
					<div class="offsetmenu__close__btn">
						<a href="#"><i class="zmdi zmdi-close"></i></a>
					</div>
					<div class="off__contact">
						<div class="logo">
							<a href="index.jsp"> <img src="images/logo/logo.png"
								alt="logo">
							</a>
						</div>
						<p>Lorem ipsum dolor sit amet consectetu adipisicing elit sed
							do eiusmod tempor incididunt ut labore.</p>
					</div>
				</div>
			</div>
			<!-- End Offset MEnu -->
			<!-- Start Cart Panel -->
			<div class="shopping__cart">
				<div class="shopping__cart__inner">
					<div class="offsetmenu__close__btn">
						<a href="#"><i class="zmdi zmdi-close"></i></a>
					</div>
					<div class="shp__cart__wrap">
						<div class="shp__single__product">
							<div class="shp__pro__thumb">
								<a href="#"> <img
									src="resources/images/product/sm-img/1.jpg"
									alt="product images">
								</a>
							</div>
							<div class="shp__pro__details">
								<h2>
									<a href="productdetails.do">BO&Play Wireless Speaker</a>
								</h2>
								<span class="quantity">QTY: 1</span> <span class="shp__price">$105.00</span>
							</div>
							<div class="remove__btn">
								<a href="#" title="Remove this item"><i
									class="zmdi zmdi-close"></i></a>
							</div>
						</div>
						<div class="shp__single__product">
							<div class="shp__pro__thumb">
								<a href="#"> <img
									src="resources/images/product/sm-img/2.jpg"
									alt="product images">
								</a>
							</div>
							<div class="shp__pro__details">
								<h2>
									<a href="productdetails.do">Brone Candle</a>
								</h2>
								<span class="quantity">QTY: 1</span> <span class="shp__price">$25.00</span>
							</div>
							<div class="remove__btn">
								<a href="#" title="Remove this item"><i
									class="zmdi zmdi-close"></i></a>
							</div>
						</div>
					</div>
					<ul class="shoping__total">
						<li class="subtotal">Subtotal:</li>
						<li class="total__price">$130.00</li>
					</ul>
					<ul class="shopping__btn">
						<li><a href="cart.html">View Cart</a></li>
						<li class="shp__checkout"><a href="checkout.html">Checkout</a></li>
					</ul>
				</div>
			</div>
			<!-- End Cart Panel -->
		</div>
		<!-- End Offset Wrapper -->
		<!-- Start Product Details -->
		<section class="htc__product__details pt--120 pb--100 bg__white">
			<div class="container">
				<div class="row">
					<input name="pID" type="hidden" value="${product.pID }" />
					<div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
						<div class="product__details__container">
							<div class="product__big__images">
								<div class="portfolio-full-image tab-content">
									<div role="tabpanel"
										class="tab-pane fade in active product-video-position"
										id="img-tab-1">

										<img src="/zSemiProject/resources/upload/${product.pFname }"
											alt="full-image">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-6 col-sm-12 col-xs-12 smt-30 xmt-30">
						<div class="htc__product__details__inner">
							<div class="pro__detl__title">
								<h2>${product.pNAME }</h2>
							</div>
							<div class="pro__details">
								<p>향기에는 가장 섬세하고 다양한 취향이 담겨있습니다. 그렇지만 어디 내가 좋아하는 향수 찾기가 쉬웠나요.
									좋은 원료로 만든 다양한 향수를, 더 쉽게 경험할 수 있도록. 가장 '나다운 향'을 찾기 위한 여정을 함께합니다.</p>
							</div>
							<ul class="pro__dtl__prize">
								<li><input type="hidden" readonly id="testProductID"
									value="${product.pID }"></li>
							</ul>
							<ul class="pro__dtl__prize">
								<li><fmt:formatNumber value="${product.pPRICE}"
										pattern="###,###,###" /> 원</li>
							</ul>
							<div class="product-action-wrap">
								<div class="prodict-statas">
									<span>수량 :</span>
								</div>
								<div class="product-quantity">
									<form id='myform' method='POST' action='cart.do'>
										<div class="product-quantity">
											<button type="button" class="plus">
												<span class="ti-plus"></span>
											</button>
											<input type="number" class="numBox" name="numBox" min="1"
												max="${product.pSTOCK }" value="1" readonly />
											<button type="button" class="minus">
												<span class="ti-minus"></span>
											</button>

										</div>

									</form>
								</div>
							</div>

							<ul class="pro__dtl__btn">
								<li class="buy__now__btn" id="order_btn">
								<a href="orderForm.do">바로 구매</a></li>
								
								<li class="buy__now__btn" id="cart_btn">
								<a href="#">장바구니</a></li>
							</ul>

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Product Details -->
		<!-- Start Product tab -->
		<section class="htc__product__details__tab bg__white pb--120">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
						<ul class="product__deatils__tab mb--60" role="tablist">
							<li role="presentation"><a href="getReviewList.do" role="tab"
								data-toggle="tab">Reviews</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="product__details__tab__content">
							<!-- Start Single Content -->
							<div role="tabpanel" id="description"
								class="product__tab__content fade in active">
								<!-- Start Single Review -->
                        
                        <div class="pro__review">
                        <c:forEach items="${reviewList}" var="list" >
                           <div class="review__thumb">
                              <span>${list.mID }</span>
                           </div>
                           <div class="review__details">
                              <div class="review__info">
                                 <h4>
                                    <a href="readReview.do" name="rTITLE" id="rTITLE" value="${list.rTITLE }">${list.rTITLE }</a>
                                 </h4>
                                 <!-- 수정 삭제 버튼 -->
                                 <div class="rating__send">
                                    <a href="readReview.do" name="updateReview" ><i class="zmdi zmdi-mail-reply"></i></a> <a
                                       href="deleteReview.do?pID=${list.pID }" name="deleteReview"><i class="zmdi zmdi-close"></i></a>
                                 </div>
                              </div>
                              <div class="review__date">
                                 <span>${list.rRDATE }</span>
                              </div>
                              <p name="rCONTENT" id="rCONTENT" value="rCONTENT">${list.rCONTENT }</p>
                           </div>
                            </c:forEach>
                        </div>
                       
                        <!-- End Single Review -->
								
							</div>
							<div class="review__box">
								<form id="review-form" action ="insertReview.do">
								<!-- vo 인자로 넘겨주기위해 hidden -->
                        		<input type="hidden" name="pID" value="${product.pID }" />
									<div class="single-review-form">
										<div class="review-box name">
											<input type="text" name ="rTITLE" placeholder="리뷰  제목">
										</div>
									</div>
									<div class="single-review-form">
										<div class="review-box message">
											<textarea name = "rCONTENT" placeholder="리뷰 내용"></textarea>
										</div>
									</div>
									<div class="review-btn">
										<a class="fv-btn" href="#" id="iR">submit review</a>
									</div>
								</form>
							</div>
						</div>
						<!-- End Single Content -->
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- End Product tab -->

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