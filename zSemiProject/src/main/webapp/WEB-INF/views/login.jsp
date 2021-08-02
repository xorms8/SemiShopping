<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Main Index page F2T -->

<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<script>
/* 유효성 검사 통과유무 변수 */
 
var code ="";
var idCheck = false;            // 아이디
var idckCheck = false;            // 아이디 중복 검사
var pwCheck = false;            // 비번
var pwckCheck = false;            // 비번 확인
var pwckcorCheck = false;        // 비번 확인 일치 확인
var nameCheck = false;            // 이름
var mailCheck = false;            // 이메일
var mailnumCheck = false;        // 이메일 인증번호 확인
var addressCheck = false         // 주소


</script>
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
      <div id = "container_box">
     
     <!-- Start Login Register Area -->
        <div class="htc__login__register bg__white ptb--130" >
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <ul class="login__register__menu" role="tablist">
                            <li role="presentation" class="login active"><a href="#login" role="tab" data-toggle="tab">로그인</a></li>
                          
                        </ul>
                    </div>
                </div>
                <!-- Start Login Register Content -->
                <!-- 로그인폼 -->
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="htc__login__register__wrap">
                            <!-- Start Single Content -->
                            <div id="login" role="tabpanel" class="single__tabs__panel tab-pane fade in active">
                                <form class="login" method="post" action="loginInsert.do">
                                    <input type="text" name="mID" id="mID" placeholder="아이디를 입력해주세요" required="required">
                                    <input type="password" name="mPW" id="mPW"placeholder="비밀번호를 입력해주세요" required="required">
                                   
                                     <div class="htc__login__btn mt--30">
                                  <c:if test="${sessionScope.member == null }"> 
                                  <!-- 로그인 세션 값이 없으면~ 뜨게할거임 즉, 로그인 상태면 로그인 버튼 없어짐, 새로고침 필수 -->
                                   <input type = "submit" name="login" id="login" value="로그인"/>
                                   	</c:if>
                               		</div>
                               
                                </form>
                                <div class="tabs__checkbox">                         
                                     <span class="forget"><a href="register.do">회원 가입하기</a></span>
                                     <br/>
                                     <span class="forget"><a href="userFindIdView.do">아이디 /비밀번호 찾기</a></span> 
                                </div>
                               
                              <div class="htc__social__connect">
                                    <h2>Or Login With</h2>
                                    <ul class="htc__soaial__list">
                                        <li><a class="bg--twitter" href="#"><i class="zmdi zmdi-twitter"></i></a></li>

                                        <li><a class="bg--instagram" href="#"><i class="zmdi zmdi-instagram"></i></a></li>

                                        <li><a class="bg--facebook" href="#"><i class="zmdi zmdi-facebook"></i></a></li>

                                        <li><a class="bg--googleplus" href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Content -->
                    </div>
                </div>
                <!-- End Login Register Content -->
            </div>
        </div>
        <!-- End Login Register Area -->
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