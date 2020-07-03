<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--8. login.jsp(로그인페이지 : 로그인 성공, 실패, 로그아웃 메시지 알림) -->

<%-- <%@ include file="../admin/ad_home.jsp"%> --%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="resources/admin/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="resources/admin/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="resources/admin/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="resources/admin/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="resources/admin/css/style.css" rel="stylesheet">
  <link href="resources/admin/css/style-responsive.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
    
</head>

<body class="login-img3-body">

  <div class="container">
  	<br><br><br><br>
	<a class="dropdown-toggle" href="home.do">
		<img alt="" src="resources/admin/img/icons/iconmonstr-arrow-64-240.png" width="20px">
    </a>
    <form class="login-form" id="form1" method="post" action="adminloginCheck.do">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" class="form-control" placeholder="Username" name="adminId" id="adminId" required="required">
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control" placeholder="Password" name="adminPw" id="adminPw"  required="required">
        </div>
        <button class="btn btn-primary btn-lg btn-block" type="submit" id="btnLogin" >Login</button>
      </div>
    </form>
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
  </div>

    
<script>

function fnBtnLogin(){
	// 태크.val() : 태그에 입력된 값
	// 태크.val("값") : 태그의 값을 변경 
	var adminId = document.getElementById("adminId").value;
	var adminPw = document.getElementById("adminPw").value;
	if (adminId == "") {
		alert("아이디를 입력하세요.");
		document.getElementById("adminId").focus();
		return; // 함수 종료
	}

	if (adminPw == "") {
		alert("비밀번호를 입력하세요.");
		document.getElementById("adminPw").focus();
		return;
	}
	// 폼 내부의 데이터를 전송할 주소
	//document.form1.action = "adminloginCheck.do"
// 	// 제출
	document.form1.submit();
}

</script>


     <!--
</body>

</html>



	<h2>로그인</h2>
	<form name="form1" method="post">
		<table border="1" width="400px">
			<tr>
				<td>아이디</td>
				<td><input name="adminId" id="adminId"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="adminPw" id="adminPw"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="button" id="btnLogin" onclick="fnBtnLogin();">로그인</button> 
				
					
				</td>
			</tr>
		</table>
	</form>
          -->
</body>
</html>
