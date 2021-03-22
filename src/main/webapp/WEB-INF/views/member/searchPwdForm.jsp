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
<link rel="stylesheet" href="${contextPath}/resources/css/search_pwd.css">
<script type="text/javascript" src="${contextPath}/resources/js/search_pwd.js"></script>
</head>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">비밀번호 찾기</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2>비밀번호 찾기</h2>
		<div class="boxTitle">
			<h3>
				안녕하세요.<br>
				<strong>(재)아름지기 홈페이지</strong>에 오신 것을 환영합니다.
			</h3>
			<p class="desc">로그인을 하시면 더욱 편리하게 (재)아름지기 홈페이지를 이용하실 수 있습니다.</p>
		</div>
		<!--비밀번호 찾기 영역-->
		<article>
			<div class="boxFind">
				<ul class="table">
					<li><a href="${contextPath}/member/searchIdForm.do">아이디 찾기</a></li>
					<li><a href="#" class="active">비밀번호 찾기</a></li>
				</ul>
				<form>
					<fieldset>
						<div class="inputItem">
							<label for="id">아이디</label> <input type="text" id="id" name="id"
								title="아이디">
						</div>
						<div class="inputItem">
							<label for="name">이름</label> <input type="text" id="name"
								name="name" title="이름">
						</div>
						<div class="inputItem">
							<label for="email">이메일</label> <input type="email" id="email"
								name="email" title="이메일">
						</div>
						<button type="submit" id="btnIdFind" class="btn"
							onclick="pwdFind();">비밀번호 찾기</button>
						<a href="${contextPath}/member/loginForm.do" id="btnLogin" class="btn">로그인</a>
					</fieldset>
				</form>
			</div>
		</article>
		<!--//비밀번호 찾기-->
	</section>

</body>
</html>