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
	href="${contextPath}/resources/css/support_group.css">
<script type="text/javascript"
	src="${contextPath}/resources/js/support_group.js"></script>
</head>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">단체후원</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2>단체후원(기업 및 법인)</h2>
		<article>
			<!--타이틀 영역-->
			<div class="title">
				<div class="inner">
					<h3 class="tHan">
						이 땅의 모든 문화유산을 두루 소중히 보살피고<br>세계로 우리 문화의 가치를 나누고자 하는 아름지기의 꿈에
						함께 해주세요.
					</h3>
					<p>
						아름지기는 내일의 문화유산을 만들어나가는 의미있는 사업에 동참해주실 메세나 파트너를 환영합니다.<br>
						아름지기와 함께 우리 전통문화의 가치를 잇고 세계로 그 가치와 아름다움을 알리는데 뜻이 있는 분들과 함께하는 날을
						기대하고 있습니다.<br> 메세나 활동과 관련한 문의 사항은 <strong>아름지기 사무국
							후원문화팀(02-741-8375 / arum@arumjigi.org)</strong>으로 문의해 주시기 바랍니다.
					</p>
				</div>
			</div>
			<!--//타이틀 영역-->
			<!--후원 리스트-->
			<ul class="memberType">
				<li><a> 단체 후원회원 <span>연 480만원</span>
				</a></li>
				<li><a> 지정 사업 후원 <span>아름지기 목적사업 후원<span>(자율
								금액 후원)</span></span>
				</a></li>
				<li><a> 후원기업 보기 </a></li>
			</ul>
			<!--//후원 리스트-->

		</article>
	</section>

</body>
</html>