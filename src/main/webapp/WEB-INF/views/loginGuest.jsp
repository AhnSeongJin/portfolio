<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${contextPath}/resources/css/login_guest.css">
<script type="text/javascript"
	src="${contextPath}/resources/js/login_guest.js"></script>
</head>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">비회원 주문조회</a></li>
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
		<!--비회원 주문조회 영역-->
		<article>
			<div class="boxLogin">
				<ul class="table">
					<li><a href="${contextPath}/login.do">로그인</a></li>
					<li><a href="#" class="active">비회원 주문조회</a></li>
				</ul>
				<form>
					<fieldset>
						<div class="inputItem">
							<label for="order_num">주문번호</label> <input id="order_num"
								name="order_num" title="주문번호">
						</div>
						<div class="inputItem">
							<label for="order_name">이름</label> <input id="order_name"
								name="order_name" title="이름">
						</div>
						<button type="submit" class="btnGuest">조회하기</button>
						<ul class="loginUtil">
							<li><a href="${contextPath}/agree.do">회원가입</a></li>
							<li><a href="${contextPath}/searcdId.do">아이디 찾기</a></li>
							<li><a href="${contextPath}/searchPwd.do">비밀번호 찾기</a></li>
						</ul>
					</fieldset>
				</form>
			</div>
		</article>
		<!--//비회원 주문조회 영역-->
	</section>

</body>
</html>