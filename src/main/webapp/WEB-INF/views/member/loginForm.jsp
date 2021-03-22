<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- RedirectAttributes로 넘긴 값은 c:set 으로 값 받아야 사용가능 (session이랑 다르네) -->
<c:set var="result" value="${param.result }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/css/login.css">
<script type="text/javascript"
	src="${contextPath}/resources/js/login.js"></script>
<%-- <c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>   --%>
<c:if test='${not empty message }'>
	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
		}
	</script>
</c:if>
</head>
<body>

	<!--컨텐츠 영역-->
	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">회원로그인</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2>로그인</h2>
		<div class="boxTitle">
			<h3>
				안녕하세요.<br>
				<strong>(재)아름지기 홈페이지</strong>에 오신 것을 환영합니다.
			</h3>
			<p class="desc">로그인을 하시면 더욱 편리하게 (재)아름지기 홈페이지를 이용하실 수 있습니다.</p>
		</div>
		<!--로그인 영역-->
		<article>
			<div class="boxLogin">
				<ul class="table">
					<li><a href="#" class="active">로그인</a></li>
					<li><a href="${contextPath}/loginGuest.do">비회원 주문조회</a></li>
				</ul>
				<form method="post" action="${contextPath}/member/login.do">
					<fieldset>
						<div class="inputItem">
							<label for="id">아이디</label> <input type="text" id="id" name="id"
								title="아이디">
						</div>
						<div class="inputItem">
							<label for="pwd">비밀번호</label> <input type="password" id="pwd"
								name="pwd" title="비밀번호">
						</div>
						<button type="submit" class="btnLogin" onclick="login();">로그인</button>
						<ul class="loginUtil">
							<li><a href="${contextPath}/member/agree.do">회원가입</a></li>
							<li><a href="${contextPath}/member/searchIdForm.do">아이디 찾기</a></li>
							<li><a href="${contextPath}/member/searchPwdForm.do">비밀번호 찾기</a></li>
						</ul>
					</fieldset>
				</form>
			</div>
		</article>
		<!--//로그인 영역-->
	</section>
	<!--//컨텐츠 영역-->

</body>
</html>