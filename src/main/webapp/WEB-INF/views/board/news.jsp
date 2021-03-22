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
<link rel="stylesheet" href="${contextPath}/resources/css/news.css">
<script type="text/javascript" src="${contextPath}/resources/js/news.js"></script>
</head>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">News&Press</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2>News&Press</h2>
		<article>
			<!--탭 메뉴-->
			<!--클릭되면 active 클래스 걸어서 바뀌게 처리하기-->
			<ul id="tab">
				<li>전체</li>
				<li>News</li>
				<li>Press</li>
			</ul>
			<!--//탭 메뉴-->
			<!--자주묻는질문-->
			<div class="listHead">
				<!--제이쿼리로 글 갯수 확인-->
				<h3 id="inner"></h3>
				<div class="fr">
					<form>
						<fieldset>
							<div class="inputItem">
								<select title="검색 영역 선택" id="search_key" name="search_key">
									<option value="title" selected="">제목</option>
									<option value="content">내용</option>
								</select> <input type="search" title="검색어 입력" id="search_val"
									name="search_val" placeholder="검색어를 입력해주세요" value="">
								<button class="ir" type="submit" id="btnSearch">검색하기</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<!--공지사항 테이블 영역-->
			<table class="qnaTbl">
				<caption></caption>
				<colgroup>
					<col style="width: 10%">
					<col style="width: 70%">
					<col style="width: 10%">
					<col style="width: 10%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">NO</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
					<!-- loop -->
					<!-- 질문 -->
					<tr>
						<td>7</td>
						<td class="tl question"><span class="news">[News] </span>아름지기
							기획전시가 ‘도무스 코리아(domus Korea)’에 소개되었습니다.</td>
						<td>2020.02.27</td>
						<td>436</td>
					</tr>
					<!-- 질문 -->
					<!-- 질문 -->
					<tr>
						<td>6</td>
						<td class="tl question"><span class="news">[News] </span>
							[채용] 아름지기 사무국 홍보기획팀 단기계약직 채용공고</td>
						<td>2020.01.07</td>
						<td>321</td>
					</tr>
					<!-- 질문 -->
					<!-- 질문 -->
					<tr>
						<td>5</td>
						<td class="tl question"><span class="news">[News] </span>붓
							끝에서 전해지는 멋과 생동감을 담다.-아름지기 문화상품 도트무늬 가방과 주머니 출시</td>
						<td>2019.10.29</td>
						<td>486</td>
					</tr>
					<!-- 질문 -->
					<!-- 질문 -->
					<tr>
						<td>4</td>
						<td class="tl question"><span class="press">[Press] </span>CJ문화재단,
							서도호 작가 다큐 '함녕전: 황제의 침실' 특별상영회 개최</td>
						<td>2019.06.03</td>
						<td>101</td>
					</tr>
					<!-- 질문 -->
					<!-- 질문 -->
					<tr>
						<td>3</td>
						<td class="tl question"><span class="press">[Press] </span>‘왕의
							비밀’ 엿보는 고궁 밤마실…600여 년 시공간을 넘나들다</td>
						<td>2019.06.03</td>
						<td>87</td>
					</tr>
					<!-- 질문 -->
					<!-- 질문 -->
					<tr>
						<td>2</td>
						<td class="tl question"><span class="news">[News] </span>아름지기,
							문화체육관광부가 수여하는 2019 '올해의 공예상' 수상</td>
						<td>2019.05.20</td>
						<td>939</td>
					</tr>
					<!-- 질문 -->
					<!-- 질문 -->
					<tr>
						<td>1</td>
						<td class="tl question"><span class="news">[News] </span>[동아일보]
							“제사로 식구들 힘들게 하지 마라” 500년 종가의 가르침</td>
						<td>2019.01.28</td>
						<td>175</td>
					</tr>
					<!-- 질문 -->

					<!-- //loop -->
				</tbody>
			</table>
			<!--//공지사항 테이블 영역-->
		</article>
	</section>

</body>
</html>