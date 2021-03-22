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
<link rel="stylesheet" href="${contextPath}/resources/css/artshop.css">
<script type="text/javascript"
	src="${contextPath}/resources/js/artshop.js"></script>
</head>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.com" class="home">홈</a></li>
				<li><a href="#">아트숍</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2>아트숍</h2>
		<article>
			<!--탭 리스트 항목-->
			<ul class="tabShop">
				<li><a>식기</a></li>
				<li><a>가구</a></li>
				<li><a>소품</a></li>
				<li><a>전시도록</a></li>
				<li><a>이벤트</a></li>
			</ul>
			<!--//탭 리스트 항목-->
			<!--리스트 검색영역-->
			<div class="listHead">
				<div class="frame">
					<form>
						<fieldset>
							<select title="검색 영역 선택" id="search_key" name="search_key">
								<option>상품명</option>
							</select> <input type="search" id="search" placeholder="검색어를 입력해 주세요.">
							<button type="submit" class="ir" id="btn_search">검색하기</button>
						</fieldset>
					</form>
				</div>
			</div>
			<!--//리스트 검색영역-->
			<!--상품 리스트 영역-->
			<ul class="allList">
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list01.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							소품 > 기타<br> <strong>도트무늬 가방,주머니</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list02.png">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							소품 > 노방<br> <strong>노방 봉투</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list03.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							소품 > 노방<br> <strong>노방 봉지</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list04.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							가구 > 아름지기XJAJU<br> <strong>보료</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list05.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							소품 > 방짜<br> <strong>백동트레이</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list06.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							식기 > 방짜<br> <strong>방짜 백동 볼 大</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list07.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							소품 > 한지<br> <strong>한지 테이블매트</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list08.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							소품 > 천연양모<br> <strong>천영양모 직사각 파우치</strong>
						</p>
				</a></li>
			</ul>
			<div id="more">MORE</div>
			<!--숨긴 상품 리스트 영역-->
			<ul class="allList hide">
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list09.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							소품 > 천연양모<br> <strong>천영양모 카드지갑</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list10.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							식기 > 방짜<br> <strong>방짜 백동 볼 中</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list11.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							식기 > 백자<br> <strong>백자 사발(대)</strong>
						</p>
				</a></li>
				<li><a> <span> <img
							src="${contextPath}/resources/images/artshop/list12.jpg">
							<div class="hoverForm">
								<div class="clickBox">
									자세히보기 <img
										src="${contextPath}/resources/images/artshop/btn_arrow_02.png" />
								</div>
							</div>
					</span>
						<p>
							식기 > 백자<br> <strong>백자 사발(중)</strong>
						</p>
				</a></li>
			</ul>
			<!--//숨긴 상품 리스트 영역-->
			<!--//상품 리스트 영역-->
		</article>
	</section>

</body>
</html>