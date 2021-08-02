<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
<title>결제 완료</title>
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
                    <img src="/zSemiProject/resources/images/resultPayment.png"/>
                        <ul class="login__register__menu" role="tablist">
                            
                          	<li><a href="index.jsp"><button type="button" class="btn btn-default" style="margin-top:20px">Home</button></a></li>
                        </ul>
                    </div>
                </div>
                <!-- Start Login Register Content -->
                
        </div>
        <!-- End Login Register Area -->
        </div>
 	</div>
 	</section>
   <!-- E: 본문 영역 끝 -->
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