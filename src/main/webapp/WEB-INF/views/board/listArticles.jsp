<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set  var="articlesList"  value="${articlesMap.articlesList}" />
<c:set  var="totArticles"  value="${articlesMap.totArticles}" />
<c:set  var="section"  value="${articlesMap.section}" />
<c:set  var="pageNum"  value="${articlesMap.pageNum}" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<style>
.cls1 {
	text-decoration: none;
}

.cls2 {
	text-align: center;
	font-size: 30px;
}
.no-uline {text-decoration:none;}
.sel-page{text-decoration:none;color:red;}
</style>
<meta charset="UTF-8">
<title>글목록창</title>
</head>
<script>
	// 글작성시 session에 isLogOn 으로 로그인 여부 확인.
	// 비로그인시 로그인창으로 보내고 로그인완료시 글작성창으로 보냄(action값을 같이 넘긴다)
	function fn_articleForm(isLogOn, articleForm, loginForm) {
		if (isLogOn != '' && isLogOn != 'false') {
			location.href = articleForm;
		} else {
			alert("로그인 후 글쓰기가 가능합니다.")
			location.href = loginForm + '?action=/board/articleForm.do';
		}
	}
</script>
<body>

	<section id="content">
		<!--네비게이션 영역-->
		<div class="location">
			<ul>
				<li><a href="${contextPath}/index.do" class="home">홈</a></li>
				<li><a href="#">게시판</a></li>
			</ul>
		</div>
		<!--//네비게이션 영역-->
		<h2>게시판</h2>
		<table align="center" border="1" width="80%">
			<tr height="10" align="center" bgcolor="ecb800">
				<td>글번호</td>
				<td>작성자</td>
				<td>제목</td>
				<td>작성일</td>
			</tr>
			<c:choose>
				<c:when test="${articlesList ==null }">
					<tr height="10">
						<td colspan="4">
							<p align="center">
								<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
							</p>
						</td>
					</tr>
				</c:when>
				<c:when test="${articlesList !=null }">
					<c:forEach var="article" items="${articlesList }" varStatus="articleNum">
						<tr align="center">
							<%-- <td width="5%">${articleNum.count}</td> --%>
							<td width="5%">${article.articleNO}</td>
							<td width="10%">${article.id }</td>
							<td align='left' width="35%"><span style="padding-right: 30px"></span> <c:choose>
									<c:when test='${article.depth > 1 }'>
										<c:forEach begin="1" end="${article.depth }" step="1">
											<span style="padding-left: 20px"></span>
										</c:forEach>
										<span style="font-size: 12px;">[답변]</span>
										<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
									</c:when>
									<c:otherwise>
										<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
									</c:otherwise>
								</c:choose></td>
							<td width="10%">${article.writeDate}</td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
		</table>
		<div class="cls2">
			<c:if test="${totArticles != null }">
				<c:choose>
					<c:when test="${totArticles >100 }">
						<!-- 글 개수가 100 초과인경우 -->
						<c:forEach var="page" begin="1" end="10" step="1">
							<c:if test="${section >1 && page==1 }">
								<a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; pre </a>
							</c:if>
							<a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
							<c:if test="${page ==10 }">
								<a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}">&nbsp; next</a>
							</c:if>
						</c:forEach>
					</c:when>
					
					<c:when test="${totArticles ==100 }">
						<!--등록된 글 개수가 100개인경우  -->
						<c:forEach var="page" begin="1" end="10" step="1">
							<a class="no-uline" href="#">${page } </a>
						</c:forEach>
					</c:when>

					<c:when test="${totArticles< 100 }">
						<!--등록된 글 개수가 100개 미만인 경우  -->
						<c:forEach var="page" begin="1" end="${totArticles/10 +1}" step="1">
							<c:choose>
								<c:when test="${page==pageNum }">
									<a class="sel-page" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
								</c:when>
								<c:otherwise>
									<a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:when>
				</c:choose>
			</c:if>
		</div>
		<br>
		<br>
		<!-- <a  class="cls1"  href="#"><p class="cls2">글쓰기</p></a> -->
		<a class="cls1" href="javascript:fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do', 
                                                    '${contextPath}/member/loginForm.do')"><p
				class="cls2"
			>글쓰기</p></a>
	</section>

</body>
</html>