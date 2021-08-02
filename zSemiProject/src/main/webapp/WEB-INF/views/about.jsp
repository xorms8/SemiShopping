<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
<title>about</title>
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
   </div>
 <!-- Start Our Store Area -->
        <section class="htc__store__area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section__title section__title--2 text-center">
                            <h2 class="title__line">Welcome To F2T Store</h2>
                            <p>우리는 남들과는 다른, 더 나은 것들을 만듭니다</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Our Store Area -->
        <!-- Start Choose Us Area -->
        <section class="htc__choose__us__ares bg__white">
            <div class="container-fluid">
                
                    </div>
                    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                        <div class="htc__choose__wrap bg__cat--4">
                            <h2 class="choose__title">우리 F2T 는?</h2>
                            <div class="choose__container">
                                <div class="single__chooose">
                                    <div class="choose__us">
                                        <div class="choose__icon">
                                            <span class="ti-heart"></span>
                                        </div>
                                        <div class="choose__details">
                                            <h4>Free Gift Box</h4>
                                            <p>향수배송중에 손상되지 않도록 무료로 하드케이스에 담아드립니다.</p>
                                        </div>
                                    </div>
                                    <div class="choose__us">
                                        <div class="choose__icon">
                                            <span class="ti-truck"></span>
                                        </div>
                                        <div class="choose__details">
                                            <h4>Free Delivery</h4>
                                            <p>배송비는 저희가 부담합니다.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single__chooose">
                                    <div class="choose__us">
                                        <div class="choose__icon">
                                            <span class="ti-reload"></span>
                                        </div>
                                        <div class="choose__details">
                                            <h4>Money Back</h4>
                                            <p>상품 구매시 10% 마일리지로 전환해드립니다.</p>
                                        </div>
                                    </div>
                                    <div class="choose__us">
                                        <div class="choose__icon">
                                            <span class="ti-time"></span>
                                        </div>
                                        <div class="choose__details">
                                            <h4>Support 24/7</h4>
                                            <p>12시간 고객센터를 운영하여 신속하게 응대하겠습니다.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </section>
        <!-- End Choose Us Area -->
        <!-- Start Our Team Area -->
        <section class="htc__team__area bg__white ptb--120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section__title section__title--2 text-center">
                            <h2 class="title__line" style="margin-top:15px;">Our Project Team</h2>                         
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="team__wrap clearfix mt--60">
                        <!-- Start Single Team -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="team foo">
                                <div class="team__thumb">
                                    <a href="#">
                                        <img src="resources/images/about/github.png" alt="team images">
                                    </a>
                                </div>
                                <div class="team__bg__color"></div>
                                <div class="team__hover__info">
                                    <div class="team__hover__action">
                                        <h2><a href="https://github.com/xorms8">임태근</a></h2>                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Team -->
                        <!-- Start Single Team -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12 xmt-30">
                            <div class="team foo">
                                <div class="team__thumb">
                                    <a href="#">
                                       <img src="resources/images/about/github.png" alt="team images">
                                    </a>
                                </div>
                                <div class="team__bg__color"></div>
                                <div class="team__hover__info">
                                    <div class="team__hover__action">
                                        <h2><a href="https://github.com/Youngseok2">장영석</a></h2>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Team -->
                        <!-- Start Single Team -->
                        <div class="col-md-4 col-lg-4 hidden-sm col-xs-12 xmt-30">
                            <div class="team foo">
                                <div class="team__thumb">
                                    <a href="#">
                                        <img src="resources/images/about/github.png" alt="team images">
                                    </a>
                                </div>
                                <div class="team__bg__color"></div>
                                <div class="team__hover__info">
                                    <div class="team__hover__action">
                                        <h2><a href="https://github.com/taehyun14">김태현</a></h2>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Team -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Our Team Area -->
        <!-- End Testimonial Area -->
        <!-- Start brand Area -->
 <!-- S: 푸터 영역 시작 -->
   <footer id = "footer">
      <div id = "footer_box">
         <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      </div>
   </footer>
</body>
</html>