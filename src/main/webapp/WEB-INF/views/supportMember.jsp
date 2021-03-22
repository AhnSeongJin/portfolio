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
<link rel="stylesheet" href="${contextPath}/resources/css/support_member.css">
<script type="text/javascript" src="${contextPath}/resources/js/support_member.js"></script>
</head>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">개인후원</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2>아름지기 개인 후원회원</h2>
		<article>
			<!--타이틀 영역-->
			<div class="title">
				<div class="inner">
					<h3 class="tHan">
						이 땅의 모든 문화유산을 두루 소중히 보살피고<br>세계로 우리 문화의 가치를 나누고자 하는 아름지기의 꿈에
						함께 해주세요.
					</h3>
					<p>전통 문화후원이 필요한 이유는 무엇일까요?</p>
					<p>
						소중한 우리 문화를 제대로 알고 제대로 지켜 나가는 것이 우리 문화를 내일의 문화유산으로 가꾸는 첫 걸음입니다.<br>
						아름지기는 비영리 문화단체로, 후원을 통해 구석구석 숨겨진 우리 문화의 가치와 아름다움을 되찾고,<br>
						현대인의 일상에 녹아 들어 우리 문화의 큰 뿌리가 살아 숨쉴 수 있도록 다양한 사업을 진행하고 있습니다.
					</p>
					<p>
						소중한 우리 문화를 잇고 나누는 뜻 깊은 나눔<br>우리 문화유산을 지키는 아름지기의 후원회원이 되어주세요.
					</p>
				</div>
			</div>
			<!--//타이틀 영역-->
			<!--후원 리스트-->
			<ul class="memberType">
				<li><a href="./agree.html"> 연 후원회원 <span>월 1만원 (연
							12만원)정기 후원</span>
				</a></li>
				<li><a href="./agree.html"> 평생 후원회원 <span>300만원 평생
							후원</span>
				</a></li>
				<li class="alert"><a> 지정 사업 후원 <span>아름지기 목적사업 후원<span>(자율
								금액 후원)</span></span>
				</a></li>
				<li class="alert"><a> 해외후원 </a></li>
			</ul>
			<!--//후원 리스트-->
			<!--해피빈 기부하기-->
			<div class="happybean">
				네이버 온라인 기부 <img src="./resources/images/support/logo_happybean.gif">을
				통해서도 아름지기 후원에 동참하실 수 있습니다. <a href="#"> <i class="ir"></i> 콩
					기부하기
				</a>
			</div>
			<!--//해피빈 기부하기-->

		</article>
	</section>

</body>
</html>