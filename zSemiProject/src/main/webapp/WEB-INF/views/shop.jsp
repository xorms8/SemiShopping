<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop</title>
<style>
.productDetail{
	color : rgba(0,0,0,0.5);
}
</style>
</head>
<body>
<div id = "root"> <!-- S: Index(Home).jsp 의 div 총괄 시작 -->
<!-- S: 헤더 부분 시작 -->
   <header id= "header">
      <div id = "header_box">
         <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      </div>
   </header>
   <!-- E: 헤더 부분 끝 -->
   

   <!-- S: 본문 영역 시작 -->
    <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(https://perfumegraphy.com/_images/mainBnr_05.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area --> 
        <!-- Start Our Product Area -->
        
        <section class="htc__product__area shop__page ptb--130 bg__white">
            <div class="container">
            
                <div class="htc__product__container">
                    <!-- Start Product MEnu -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="filter__menu__container">
                                <div class="product__menu">
                                    <button data-filter="*"  class="is-checked">All</button>
                                    <button data-filter=".cat--1">시트러스</button>
                                    <button data-filter=".cat--2">플로럴</button>
                                    <button data-filter=".cat--3">프루티</button>
                                    <button data-filter=".cat--4">아쿠아</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Product MEnu -->
                    <div class="row">
                        <div class="product__list another-product-style">
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 cat--1 col-sm-4 col-xs-12">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[0].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[0].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[0].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[0].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[0].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[0].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 cat--1 col-sm-4 col-xs-12">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[1].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[1].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[1].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[1].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[1].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[1].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[2].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[2].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[2].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[2].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[2].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[2].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[3].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[3].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[3].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[3].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[3].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[3].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 cat--1 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[4].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[4].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[4].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[4].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[4].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[4].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[5].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[5].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[5].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[5].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[5].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[5].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[6].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[6].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[6].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[6].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[6].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[6].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--2">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[7].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[7].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[7].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[7].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[7].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[7].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[8].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[8].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[8].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[8].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[8].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[8].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[9].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[9].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[9].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[9].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[9].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[9].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[10].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[10].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[10].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[10].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[10].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[10].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[11].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[11].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[11].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[11].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[11].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[11].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[12].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[12].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[12].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[12].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[12].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[12].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start 
 -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[13].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[13].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[13].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[13].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[13].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[13].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 col-sm-4 col-xs-12 cat--4">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[14].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[14].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[14].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[14].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[14].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[14].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-md-3 single__pro col-lg-3 hidden-sm col-xs-12 cat--3">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="productdetails.do?pID=${productList[15].pID }">
                                                <img src="/zSemiProject/resources/upload/${productList[15].pFname }" alt="product images">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                   
                                        <h2><a href="productdetails.do?pID=${productList[15].pID }"></a></h2>
                                        
                                        <label class="productName">${productList[15].pNAME }</label>
                                        
                                        <ul class="product__price">
                                        <li class="new__price"><fmt:formatNumber value="${productList[15].pPRICE}"
                                        pattern="###,###,###" /></li>
                                        </ul>
                                        
                                        <label class="productDetail">${productList[15].pDETAIL }</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
   
   <!-- E: 본문 영역 끝 -->
   
   
   <!-- S: 푸터 영역 시작 -->
   <footer id = "footer">
      <div id = "footer_box">
         <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      </div>
   </footer>
</div> <!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>