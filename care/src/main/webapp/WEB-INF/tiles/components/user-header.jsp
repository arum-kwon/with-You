<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <head>
 <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
 <meta name="description" content="" />
 <meta name="author" content="" />
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
        <nav class="navbar navbar-expand-lg navbar-light py-3" id="mainNav">
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
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span></button>
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
                        <li class="nav-item">
                        	<c:if test="${loginOk != null }">
	                        	<a href="#contact">
	                        		<img src="${pageContext.request.contextPath}/resources/img/user.png" style="height:50px" />
	                        	</a>
                        	</c:if>
                        </li>
                    </ul>
                    <br><br>
                <div>
                  	<c:if test="${not empty loginOk }">
                  		<input type="button" value="로그아웃" onclick="location.href='logout.do'" class="btn btn-primary">  
                  	</c:if>
                </div>
                </div>
            </div>
        </nav>


    </body>
</html>
