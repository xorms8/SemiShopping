<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>orderForm</title>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	// S: 상품 전체선택 jquery
	$(function() {  
		$('#allCheck').click(function(){
			var check = $("#allCheck").prop("checked");
			if(check){
				$(".chBox").prop("checked", true);
			} else{
				$(".chBox").prop("checked", false);
			}
		});
		
		$(".chBox").click(function(){
			$("#allCheck").prop("checked",false);
		});
		
	// E: 상품 전체선택 jquery
		
		//S: 상품 check box 삭제 jquery
		
		$(".selectDelete_btn").click(function(){
			  var confirm_val = confirm("삭제하시겠습니까?");
			  
			  if(confirm_val) {
			   var checkArr = new Array();
			   $("input[class='chBox']:checked").each(function(){
			    checkArr.push($(this).attr("data-cartNUM"));
			   });
			    
			   $.ajax({
			    url : "deleteCart.do",
			    type : "post",
			    contentType : "application/x-www-form-urlencoded;charset=UTF-8",
			    data : { chbox : checkArr },
			    success : function(result){
			    	if(result==1){
			    		 location.href = "cart.do";
			    	}else{
			    		alert("삭제실패");
			    	}
			    
			    }
			   });
			  } 
			 });
		
		//E: 상품 삭제 jquery
		
		
		
		
	})
</script>
</head>
<body>
	<div id="root">
		<!-- S: Index(Home).jsp 의 div 총괄 시작 -->
		<!-- S: 헤더 부분 시작 -->
		<header id="header">
			<div id="header_box">
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
			</div>
			<h1 style="text-align: center;">주문서</h1>
			<div class="-subtitle" style="text-align: center;">주문하실 상품명 및
				수량을 정확하게 확인해 주세요.</div>
		</header>
		<!-- E: 헤더 부분 끝 -->


		<!-- S: 본문 영역 시작 -->

		<!-- S: 카트 정보 -->
		
	<br/><br/><br/>
		<div class="container">
			<h3 style="text-align: center;">배송지</h3>
			<form class="form-horizontal" method="post" action="payment.do">
			<input type="hidden" name="oAMOUNT" value="${totalPrice}"/>
			<%-- <input type="hidden" name="mID" value="${mID}"/> --%>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oNAME">받는사람 </label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="oNAME" name="oNAME" required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oPHONE">연락처</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="oPHONE"
							placeholder="연락처" name="oPHONE" required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1">우편번호</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="sample2_postcode" placeholder="우편번호">
						<input type="button" class="btn btn-info"onclick="sample2_execDaumPostcode()" value="우편번호 찾기"
						style="margin-top:10px"><br>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oADDRESS1">주소</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="oADDRESS1" id="sample2_address" placeholder="주소" required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oADDRESS2">상세주소</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="oADDRESS2" id="sample2_detailAddress" placeholder="상세주소" required="required">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-1" for="oADDRESS3">참고항목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="oADDRESS3" id="sample2_extraAddress" placeholder="참고항목">
					</div>
				</div>
				

<!-- S 주소 API -->

<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample2_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample2_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>
				
				
				
				
				<!-- E 주소 API -->
				
				
				
				
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="submit" class="btn btn-success btn-block" id="payment_btn" style="margin-top:30px">
						<fmt:formatNumber pattern="###,###,###" value="${totalPrice}" />원 결제하기</button>
					</div>
				</div>
			</form>
		</div>


		<div class="cart-main-area ptb--120 bg__white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<form action="#">
							<div class="table-content table-responsive">
							<h3 style="text-align: center;">주문 상품</h3>
								<table border="1">
									<thead>
										<tr>
											<th>
												<div class="allCheck">
													<input type="checkbox" name="allCheck" id="allCheck" /><label
														for="allCheck">모두선택</label>

												</div>
											</th>
											<th class="product-thumbnail">상품</th>
											<th class="product-name">상품 이름</th>
											<th class="product-price">가격</th>
											<th class="product-quantity">수량</th>
											<th class="product-subtotal">가격 합계</th>
											<th class="selectDelete_btn"><button type="button" class="btn btn-default">선택삭제</button></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${cartList}" var="cartList">
											<tr>
												<td>
													<div class="checkBox">
														<input type="checkbox" name="chBox" class="chBox"
															data-cartNum="${cartList.cartNUM }" />
													</div>
												</td>

												<td class="product-thumbnail"><img
													src="/zSemiProject/resources/upload/${cartList.pFname }"
													alt="product img" /></td>
												<td class="product-name">${cartList.pNAME}</td>
												<td class="product-price"><span class="amount">
														<fmt:formatNumber pattern="###,###,###"
															value="${cartList.pPRICE}" />
												</span></td>
												<td class="product-quantity"><input type="number"
													value="${cartList.cartSTOCK}" readonly /></td>
												<%-- <td class="product-quantity">${cartList.cartSTOCK}개</td> --%>
												<td class="product-subtotal"><fmt:formatNumber
														pattern="###,###,###"
														value="${cartList.pPRICE * cartList.cartSTOCK}" /></td>
												<td class="product_${cartList.cartNUM}_remove"
													data-cartNum="${cartList.cartNUM }"><a href="#"></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						
						
							
							<div class="row">
								<div class="col-md-8 col-sm-7 col-xs-12">
								</div>
								<div class="col-md-4 col-sm-5 col-xs-12">
									<div class="cart_totals">
										<h2>결제정보</h2>
										<br/>
										<table>
											<tbody>
												<tr class="order-total">
													<th>Total</th>
													<td><strong><span class="amount"><fmt:formatNumber
																	pattern="###,###,###" value="${totalPrice}" />원</span></strong></td>
												</tr>
											</tbody>

										</table>
										<!-- <br/><br/>
										
										<div class="wc-proceed-to-checkout">
											<a href="payment.do">결제하기</a>
										</div> -->
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		

		<!-- E: 카트 영역 끝 -->
		<!-- E: 본문 영역 끝 -->


		<!-- S: 푸터 영역 시작 -->
		<footer id="footer">
			<div id="footer_box">
				<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			</div>
		</footer>
	</div>
	<!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>