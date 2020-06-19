<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--8. login.jsp(로그인페이지 : 로그인 성공, 실패, 로그아웃 메시지 알림) -->

<%-- <%@ include file="../admin/ad_home.jsp"%> --%>


<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {
			// 태크.val() : 태그에 입력된 값
			// 태크.val("값") : 태그의 값을 변경 
			var adminId = $("#adminId").val();
			var adminPw = $("#adminPw").val();
			if (adminId == "") {
				alert("아이디를 입력하세요.");
				$("#adminId").focus(); // 입력포커스 이동
				return; // 함수 종료
			}
			if (adminPw == "") {
				alert("비밀번호를 입력하세요.");
				$("#adminPw").focus();
				return;
			}
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action = "${path}/admin/loginCheck.do"
			// 제출
			document.form1.submit();
		});
	});
</script>
<body class="login-img3-body">

  <div class="container">

    <form class="login-form" action="index.html">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" class="form-control" placeholder="Username" autofocus>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control" placeholder="Password">
        </div>
        <label class="checkbox">
                <input type="checkbox" value="remember-me"> 자동체크
                <span class="pull-right"> <a href="#">비밀번호찾기</a></span>
            </label>
        <button class="btn btn-primary btn-lg btn-block" type="submit" value="로그인" onclick="location.href='ad_home.do'">Login</button>
        <button class="btn btn-info btn-lg btn-block" type="submit">Signup</button>
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
           <a href="home.do">뒤로가기</a>
        </div>
    </div>
  </div>



	<%-- <%@ include file="/WEB-INF/views/admin/menu.jsp"%> --%>
	<!-- <h2>로그인</h2>
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
					
					<br> -->
					<!-- <input type="button" id="btnLogin" onclick="location.href='ad_home.do'" >로그인</button> --> 
					
					</br>					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
