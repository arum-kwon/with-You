<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <head>
 <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
 <title>Creative - Start Bootstrap Theme</title>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <!-- Font Awesome icons (free version)-->
 <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
 <!-- Google fonts-->
 <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
 <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
 <!-- Third party plugin CSS-->
 <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
 <!-- Core theme CSS (includes Bootstrap)-->
 <link href="${pageContext.request.contextPath}/resources/userLayout/css/styles.css" rel="stylesheet" />
 <style>
 html,body,h1,h2,h3,h4,h5,h6 {
  font-family: Arial, Helvetica, sans-serif;
}


 </style>
 </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg" id="mainNav">
            <div class="container">
                <c:if test="${loginOk == null }">
	                <a class="w3-container w3-myfont w3-xxlarge" href="home.do" style="color:black;">Care With.U</a>           	
                </c:if>
            	<c:if test="${userType == 'h' }">
                	<a class="w3-container w3-myfont w3-xxlarge" href="helperMain.do" style="color:black;">Care With.U</a>
            	</c:if>
            	<c:if test="${userType == 'f' }">
                	<a class="w3-container w3-myfont w3-xxlarge" href="familyMain.do" style="color:black;">Care With.U</a>
            	</c:if>
            	<c:if test="${userType == 'p' }">
                	<a class="w3-container w3-myfont w3-xxlarge" href="patientMain.do" style="color:black;">Care With.U</a>
            	</c:if>
            	
            	<!-- 창 줄어들 때 흰색배경에 나오는 아이들 -->
                <a class="navbar-toggler navbar-toggler-right" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="dropdownMenu2" >              		
              		<c:if test="${userType == 'h' || userType == 'f' || userType == 'p'}">
              		<img src="${pageContext.request.contextPath}/resources/img/user.png" style="height:50px" />
              		</c:if>
              	</a>
               <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
               	<c:if test="${userType == 'h' || userType == 'f' || userType == 'p'}">
               	 <button class="dropdown-item" type="button" onclick="location.href='familygetSelect.do'">회원정보수정</button>
               	 <button class="dropdown-item" type="button" onclick="location.href='patientgetSelect.do'">환자정보수정</button>
               	 <button class="dropdown-item" type="button">공지사항</button>
				 <button class="dropdown-item" type="button">문의하기</button>
				 <button class="dropdown-item" type="button">알림</button>
				 <button class="dropdown-item" type="button" onclick="location.href='logout.do'">로그아웃</button>
               	</c:if>
               </div>
                
                
                
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="w3-container w3-myfont w3-large">
                            <c:if test="${userType == 'h' }">
								<a class="w3-container w3-myfont w3-large" style="color:black;">${loginOk.helperName }님 어서오세요.</a>
							</c:if>
							<c:if test="${userType == 'f' }">
								<a class="w3-container w3-myfont w3-large" style="color:black;">${loginOk.familyName }님 어서오세요.</a>
							</c:if>
						    <c:if test="${userType == 'p' }">
								<a class="w3-container w3-myfont w3-large" style="color:black;">${loginOk.patientName }님 어서오세요.</a>
							</c:if>
                        </li>
                        <li class="dropdown">
                        	<c:if test="${userType == 'f' }">
	                        	<a class="dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        		<img src="${pageContext.request.contextPath}/resources/img/user.png" style="height:50px" />
	                        	</a>
		                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
		                        	 <button class="dropdown-item" type="button" onclick="location.href='familygetSelect.do'">회원정보수정</button>
		                        	 <button class="dropdown-item" type="button">환자정보수정</button>
		                        	 <button class="dropdown-item" type="button">공지사항</button>
		    						 <button class="dropdown-item" type="button">문의하기</button>
		    						 <button class="dropdown-item" type="button">알림</button>
		    						 <button class="dropdown-item" type="button" onclick="location.href='logout.do'">로그아웃</button>
		                        </div>
                        	</c:if>
                        </li>
						<li class="dropdown">
                        	<c:if test="${userType == 'p' }">
	                        	<a class="dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        		<img src="${pageContext.request.contextPath}/resources/img/user.png" style="height:50px" />
	                        	</a>
		                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
		                        	 <button class="dropdown-item" type="button">공지사항</button>
		    						 <button class="dropdown-item" type="button">문의하기</button>
		    						 <button class="dropdown-item" type="button" onclick="location.href='logout.do'">로그아웃</button>
		                        </div>
                        	</c:if>
                        </li>                        
                        <li class="dropdown">
                        	<c:if test="${userType == 'h' }">
	                        	<a class="dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        		<img src="${pageContext.request.contextPath}/resources/img/user.png" style="height:50px" />
	                        	</a>
		                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
		                        	 <button class="dropdown-item" type="button">회원정보수정</button>		                        	 
		                        	 <button class="dropdown-item" type="button">공지사항</button>
		    						 <button class="dropdown-item" type="button">문의하기</button>
		    						 <button class="dropdown-item" type="button">알림</button>
		    						 <button class="dropdown-item" type="button" onclick="location.href='logout.do'">로그아웃</button>
		                        </div>
                        	</c:if>
                        </li>
                    </ul>
                    <br><br>
                </div>
            </div>
        </nav>


    </body>
</html>
