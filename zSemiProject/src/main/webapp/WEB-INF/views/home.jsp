<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
<title>F2T Perfume</title>
<style>
#videoContent{
    position: relative;
    width: 100%;
    height: 100%;
    overflow: hidden;
    margin:0 0;
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
   
   <section id = "container">
    <div id="video">
  	<video autoplay="autoplay" id = "videoContent" muted="muted" loop="loop" >
  	<source src="resources/images/about/about1.mp4" type="video/mp4">
  	</video>
   </div>
      <div id = "container_box">
     <!-- Start Our Team Area -->
        <section class="htc__team__area bg__white ptb--120">
            <div class="container">
                <div class="row">
                
                    <div class="col-md-12">
                    <div class="section__title section__title--2 text-center">
                           
                        </div>
                   
                        <div class="section__title section__title--2 text-center">
                            <h2 class="title__line">Better but different</h2>
                            <p>내가 좋아하는 향기를 마음 편하게 사용하세요.</p>
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
                                        <img src="resources/images/about/about2.jpg" width="300px" height="300px" alt="team images">
                                    </a>
                                </div>
                                <div class="team__bg__color"></div>
                                <div class="team__hover__info">
                                    <div class="team__hover__action">
                                        <h2>동물실험을 하지 않으며, <br />동물성 원료를 사용하지 않습니다.</h2>                            
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
                                        <img src="resources/images/about/about3.PNG" width="300px" height="300px" alt="team images">
                                    </a>
                                </div>
                                <div class="team__bg__color"></div>
                                <div class="team__hover__info">
                                    <div class="team__hover__action">
                                        <h2>FSC인증이 완료된 종이를 사용하며, <br /> 비닐을 사용하지 않습니다.</h2>                 
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
                                        <img src="resources/images/about/about4.PNG" width="300px" height="300px" alt="team images">
                                    </a>
                                </div>
                                <div class="team__bg__color"></div>
                                <div class="team__hover__info">
                                    <div class="team__hover__action">
                                        <h2>파펨의 향기와 패키지는 <br /> 특정 성별을 타깃으로 디자인되지 않았습니다.</h2>
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
        <!-- Start Testimonial Area -->
        <div class="htc__testimonial__area ptb--120" style="background: rgba(0, 0, 0, 0) url(images/bg/4.jpg) no-repeat scroll center center / cover ;" data--black__overlay="6">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <div class="testimonial__wrap owl-carousel owl-theme clearfix">
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="resources/images/about/about5.jpg" alt="testimonial images" width="100%" height="100%">
                                </div>
                                <div class="testimonial__details">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod teincidi dunt ut labore et dolore gna aliqua. Ut enim ad minim veniam,</p>
                                    <div class="test__info">
                                        <span><a href="#">Robiul siddikee</a></span>
                                        <span> - </span>
                                        <span>Customer</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="resources/images/about/about6.jpg" width="100%" height="100%" alt="testimonial images">
                                </div>
                                <div class="testimonial__details">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod teincidi dunt ut labore et dolore gna aliqua. Ut enim ad minim veniam,</p>
                                    <div class="test__info">
                                        <span><a href="#">Robiul siddikee</a></span>
                                        <span> - </span>
                                        <span>Customer</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                            <!-- Start Single Testimonial -->
                            <div class="testimonial">
                                <div class="testimonial__thumb">
                                    <img src="resources/images/about/about7.png" width="100%" height="100%" alt="testimonial images">
                                </div>
                                <div class="testimonial__details">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod teincidi dunt ut labore et dolore gna aliqua. Ut enim ad minim veniam,</p>
                                    <div class="test__info">
                                        <span><a href="#">Robiul siddikee</a></span>
                                        <span> - </span>
                                        <span>Customer</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Testimonial -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Testimonial Area -->
        <div class="row">
                    <div class="col-md-12">
                        <div class="section__title section__title--2 text-center">
                            <h2 class="title__line">Instagram @F2T</h2>
                        </div>
                    </div>
                </div>
        <!-- Start brand Area -->
        <div class="htc__brand__area bg__white ptb--120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="brand__list">
                            <li><a href="#">
                                <img src="resources/images/about/about8.PNG" alt="brand images">
                            </a></li>
                            <li><a href="#">
                                <img src="resources/images/about/about9.PNG" alt="brand images">
                            </a></li>
                            <li><a href="#">
                                <img src="resources/images/about/about10.PNG" alt="brand images">
                            </a></li>
                            <li><a href="#">
                                <img src="resources/images/about/about11.PNG" alt="brand images">
                            </a></li>
                            <li class="hidden-sm"><a href="#">
                                <img src="resources/images/about/about12.PNG" alt="brand images">
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End brand Area -->
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