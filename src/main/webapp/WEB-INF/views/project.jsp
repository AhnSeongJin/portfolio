<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/css/project.css">
<script type="text/javascript" src="${contextPath}/resources/js/project.js"></script>
</head>
<body>

	<section id="content">
            <!--네비게이션 영역-->
            <div class="location">
                <ul>
                    <li>
                        <a href="${contextPath}/index.do" class="home">홈</a>
                    </li>
                    <li>
                        <a href="#">프로젝트</a>
                    </li>
                </ul>
            </div>
            <!--//네비게이션 영역-->
            <h2>궁궐 및 자연문화유산<br>안내매체 디자인 개선사업</h2>
            <article>
                <div class="projectInfo">
                    <dl class="info">
                        <dt>YEAR</dt>
                        <dd>2005~2016</dd>
                        <dt>LOCATION</dt>
                        <dd>경복궁, 덕수궁, 창덕궁, 창경궁, 종묘, 해인사, 하회 양동마을, 한양도성</dd>
                        <dt>CLIENT</dt>
                        <dd>문화재청</dd>
                        <dt>DEPARTMENT</dt>
                        <dd>아름지기 사업팀 02-741-8374 (사업 진행 및 감리)</dd>
                    </dl>
                    <div class="frame">
                        <p>참된 의미의 공공디자인을 만들어가는 과정</p>
                        <p>&nbsp;</p>
                        <p>문화유산 주변의 편의시설, 안내시설, 방재시설 등의 디자인 수준을 높이는 일은 단순히 시설물 정비의 차원이 아니라 그 나라의 문화적 수준을 집약적으로 보여주는 예입니다. 아름지기는 조상들의 솜씨에 부끄럽지 않은 문화유산 주변의 공공디자인을 구현하기 위하여 국내외 전문가들과 함께 다양한 사업을 시행하고 있습니다. 아름지기의 안내매체 디자인 개선사업을 통해 공공디자인이 놓치지 말아야 할 기준과 과정, 그리고 원칙을 세우는 데 의미 있는 초석이 되기를 바랍니다. 
                        </p>
                    </div>
                </div>
                <ul class="projectList">
                    <!--<li>
                        <figure>
                            <img src="./images/project/project01.jpg">
                            <figcaption>
                                <p class="desc">4대 궁궐 및  종묘 안내판  디자인 개선  사업</p>
                            </figcaption>
                        </figure>
                    </li>
                    <li>
                        <figure>
                            <img src="./images/project/project02.jpg">
                            <figcaption>
                                <p class="desc">해인사 안내판 디자인</p>
                            </figcaption>
                        </figure>
                    </li>
                    <li>
                        <figure>
                            <img src="./images/project/project03.jpg">
                            <figcaption>
                                <p class="desc">하회●양동마을 안내판 디자인</p>
                            </figcaption>
                        </figure>
                    </li>
                    <li>
                        <figure>
                            <img src="./images/project/project04.jpg">
                            <figcaption>
                                <p class="desc">한양도성 안내판 디자인</p>
                            </figcaption>
                        </figure>
                    </li> 이전 -->

					<!--2020.07.04 이미지 백그라운드로 변경-->
					
					<li>
                        <figure class="project_01">
                            <figcaption>
                                <p class="desc">4대 궁궐 및  종묘 안내판  디자인 개선  사업</p>
                            </figcaption>
                        </figure>
                    </li>
                    <li>
                        <figure class="project_02">
                            <figcaption>
                                <p class="desc">해인사 안내판 디자인</p>
                            </figcaption>
                        </figure>
                    </li>
                    <li>
                        <figure class="project_03">
                            <figcaption>
                                <p class="desc">하회·양동마을 안내판 디자인</p>
                            </figcaption>
                        </figure>
                    </li>
                    <li>
                        <figure class="project_04">
                            <figcaption>
                                <p class="desc">한양도성 안내판 디자인</p>
                            </figcaption>
                        </figure>
                    </li>
                </ul>
            </article>
        </section>

</body>
</html>