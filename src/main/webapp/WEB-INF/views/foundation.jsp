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
	href="${contextPath}/resources/css/foundation.css">
<script type="text/javascript"
	src="${contextPath}/resources/js/foundation.js"></script>
</head>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">아름지기는</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2 class="tHan">
			아름지기, 전통의 가치를 잇다<br>문화의 아름다움을 나누다.
		</h2>
		<article>
			<!--타이틀 영역-->
			<div id="fVisual">
				<div class="inner">
					<h3 class="tHan">
						이 땅의 모든 문화유산을 두루 소중히 보살피고<br>세계로 우리 문화의 가치를 나누고자 하는<br>아름지기의
						꿈에 함께 해주셔서 감사합니다
					</h3>
				</div>
			</div>
			<!--텍스트 영역-->
			<div id="bxTit">
				<h4 class="titL tHan">
					전통은 과거로부터 늘 새롭게 창조되고<br>끊임없이 진화하는 것입니다.<br>우리 문화의 가치는 더
					넓은 곳,<br>더 먼 미래를 향해 나아가야 합니다<span class="dot"></span>
				</h4>
				<div class="titR">
					<p>아름지기는 우리 전통문화의 아름다움과 가치를 일깨워 현시대의 생활 문화에 올바르게 적용하고 이를 세계에
						알리기 위해 활동하는 비영리 문화단체입니다.</p>
					<br>
					<p>우리 문화에 대한 긍지는 우리가 세계의 한가운데 흔들림 없이 우뚝 설 수 있는 가장 큰 원동력입니다.
						아름지기는 우리의 전통문화가 과거에 멈춰서지 않도록 한국 문화의 아름다움을 깊이 이해하고 창조적으로 계승하고 발전시켜
						다음 세대로 이어가고자 합니다.</p>
				</div>
			</div>
			<!---->
			<div id="overBg">
				<div class="overWrap">
					<!--h5 텍스트 옆으로 선긋고 텍스트 위로 올리기 위해 span태그로 텍스트 추가-->
					<h5 class="tHan">
						<span>아름지기는 다음과 같은 목표와 활동으로<br class="mbBr"> 과거, 현재,
							미래를 관통하는<br>우리 문화의 정수를 탐구하여 모범이 되는 사례를 하나하나 만들어가고 있습니다.
						</span>
					</h5>
					<div class="clear">
						<div class="fl">
							<h6>Arumjigi Objectives</h6>
							<ul>
								<li>궁궐 및 자연문화유산 안내매체 디자인 개선사업</li>
								<li>우리의 삶과 문화에 투영되는 한국 전통 문화의 아름다움에 대한 깊은 이해</li>
								<li>품격 있는 한국 문화유산의 계승과 확산</li>
							</ul>
						</div>
						<div class="fr">
							<h6>Core Activities</h6>
							<ul>
								<li>내일의 문화유산 창조 Heritage Tomorrow</li>
								<li>한국 문화유산 글로벌 브랜딩 Regeneration of Korean Beauty</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>

</body>
</html>