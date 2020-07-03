<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<meta charset="UTF-8"/>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
	
</head>
<style>
#chat {
    width: 500px; height: 600px; overflow-y: auto; border: 1px solid black; margin: 0 auto;
}
</style>
<body>
	<div id="chat"></div>
	<div align="center">
		<form id="chatForm">
			<input type="text" id="message"/>
			<button>send</button>
		</form>
	</div>
	<div><br/></div>
	<a href = "home.do">메인으로</a>
	<script>
		var sock = new SockJS("care");
		
		$(document).ready(function(){
			$("#chatForm").submit(function(event){
				event.preventDefault();
				sock.send($("#message").val());
				$("#message").val('').focus();
			});
		});
		
		sock.onopen = function() {
			$("#chat").append("연결됨" + "<br/>");
		}		
		
		sock.onmessage = function(e){
			$("#chat").append(e.data + "<br/>");
		}
		
		sock.onclose = function(){
			$("#chat").append("연결 종료");
		} 
		 
		/*  채팅이 많아져 스크롤바가 넘어가더라도 자동적으로 스크롤바가 내려가게함 
	    window.setInterval(function() {
	        var elem = document.getElementById('messageWindow');
	        elem.scrollTop = elem.scrollHeight;
	    }, 0);
		 */

	</script>
</body>
</html>