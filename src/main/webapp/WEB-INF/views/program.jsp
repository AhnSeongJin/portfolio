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
<link rel="stylesheet" href="${contextPath}/resources/css/program.css">
<script type="text/javascript" src="${contextPath}/resources/js/program.js"></script>
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
                        <a href="#">프로그램</a>
                    </li>
                </ul>
            </div>
            <!--//네비게이션 영역-->
            <h2>프로그램</h2>
            <div class="imgTitle">
                <img src="./resources/images/program/program_title.jpg">
            </div>
            <article>
                <div class="programList">
                    <figure>
                        <img src="./resources/images/program/program01.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase01">궁궐 환경가꾸기</span>
                                <strong>[궁궐 자원봉사 활동 신청] 궁궐 환경을 개선하고 활기를 불어넣어 주실 회원을 모집합니다.</strong>
                            </p>
                            <dl>
                                <dt>일시</dt>
                                <dd>9월 28일(토)/10월 13일(토)/10월 20일(토)</dd>
                                <dt>시간</dt>
                                <dd>오전 08:45~11:00</dd>
                                <dt>장소</dt>
                                <dd>창덕궁 돈화문</dd>
                                <dt>참가자격</dt>
                                <dd>아름지기 후원회원 이상</dd>
                            </dl>
                        </figcaption>
                    </figure>
                    <figure>
                        <img src="./resources/images/program/program02.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase02">아름지기 아카데미</span>
                                <strong>아름지기 한식 쿠킹클래스 수강생 모집</strong>
                            </p>
                            <dl>
                                <dt>일시</dt>
                                <dd>2018년 11월 9일 금요일, 오전 11시~1시</dd>
                                <dt>장소</dt>
                                <dd>시연_온지음 신사옥(종로구 효자로 49) 1층 / 시식_4층 온지음 맛공방</dd>
                                <dt>대상</dt>
                                <dd>연∙평생 후원회원 이상</dd>
                                <dt>참가비</dt>
                                <dd>12만원</dd>
                                <dt>정원</dt>
                                <dd>12명(선착순)</dd>
                                <dt>신청방법</dt>
                                <dd>전화신청(아름지기 사무국 02-741-8375)</dd>
                            </dl>
                        </figcaption>
                    </figure>
                    <figure>
                        <img src="./resources/images/program/program03.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase02">아름지기 아카데미</span>
                                <strong>[참가신청] 기획전시 연계 강연 프로그램을 통해 우리 문화에 대한 깊이를 더해보세요.</strong>
                            </p>
                            <dl>
                                <dt>일시</dt>
                                <dd>2018년 10월 11일 목요일, 17:30~19:00</dd>
                                <dt>장소</dt>
                                <dd>아름지기 사옥 2층 중정(종로구 효자로 17)</dd>
                                <dt>참가신청</dt>
                                <dd>아름지기 홈페이지 신청</dd>
                                <dt>참가비</dt>
                                <dd>무료</dd>
                            </dl>
                        </figcaption>
                    </figure>
                    <figure>
                        <img src="./resources/images/program/program04.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase01">궁궐 환경가꾸기</span>
                                <strong>[궁궐 자원봉사 활동 신청] 궁궐을 반짝반짝, 아름지기의 힘을 모아주세요.</strong>
                            </p>
                            <dl>
                                <dt>일정</dt>
                                <dd>10월 13일(토)/20일(토) 08:50</dd>
                                <dt>장소</dt>
                                <dd>창덕궁 돈화문</dd>
                                <dt>참가자격</dt>
                                <dd>아름지기 후원회원 이상</dd>
                                <dt>참가신청</dt>
                                <dd>아름지기 홈페이지 프로그램</dd>
                            </dl>
                        </figcaption>
                    </figure>
                    <figure>
                        <img src="./resources/images/program/program05.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase02">아름지기 아카데미</span>
                                <strong>2018 아름지기 아카데미 <소유所有ㆍ사유思惟> 참가 신청</strong>
                            </p>
                            <dl>
                                <dl>
                                    <dt>일시</dt>
                                    <dd>2018년 7월 14일 토요일, 오후 1시 30분~5시 30분</dd>
                                    <dt>장소</dt>
                                    <dd>전통문화연구소 온지음 신사옥 1층(서울 종로구 효자로 49)</dd>
                                    <dt>참가비</dt>
                                    <dd>아름지기 평생·연기부 후원회원: 5만원, 웹회원 및 일반: 7만원</dd>
                                    <dt>신청방법</dt>
                                    <dd>아름지기 홈페이지 프로그램 신청하기에서 등록 후 입금</dd>
                                    <dt>입금정보</dt>
                                    <dd>하나은행 162-910005-85404, 예금주 재단법인 아름지기</dd>
                                    <dt>문의</dt>
                                    <dd>아름지기 후원문화팀 02-741-8375</dd>
                                </dl>
                            </dl>
                        </figcaption>
                    </figure>
                    <figure>
                        <img src="./resources/images/program/program06.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase04">바자</span>
                                <strong>2018 헤렌과 함께하는 아름지기 기금 마련 바자</strong>
                            </p>
                            <dl>
                                <dt>연주자</dt>
                                <dd>제8회 아름지기 기금 마련 바자</dd>
                                <dt>일시</dt>
                                <dd>2018년 04월 26일</dd>
                                <dt>참가비</dt>
                                <dd>10,000원</dd>
                                <dt>정원</dt>
                                <dd>00명</dd>
                                <dt>장소</dt>
                                <dd>더플라자 그랜드 볼룸</dd>
                            </dl>
                        </figcaption>
                    </figure>
                    <figure>
                        <img src="./resources/images/program/program07.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase03">기획전시</span>
                                <strong>홍건익 가옥 전시 연계 강연 프로그램 ‘고영주와 형제들’</strong>
                            </p>
                            <dl>
                                <dt>강연자</dt>
                                <dd>허경진</dd>
                                <dt>일시</dt>
                                <dd>2017년 10월 20일(금) 오후 2시~4시</dd>
                                <dt>장소</dt>
                                <dd>홍건익 가옥(서울시 종로구 필운대로1길 14-1)</dd>
                                <dt>상태</dt>
                                <dd>종료</dd>
                            </dl>
                        </figcaption>
                    </figure>
                    <figure>
                        <img src="./resources/images/program/program08.jpg">
                        <figcaption>
                            <p class="text">
                                <span class="pCase03">기획전시</span>
                                <strong>아름지기 배렴 가옥 기획전시 <제당과 배렴가옥>展</strong>
                            </p>
                            <dl>
                                <dt>강연자</dt>
                                <dd>아름지기</dd>
                                <dt>일시</dt>
                                <dd>2017년 09월 29일(금)~2018년 03월 25일(일)</dd>
                                <dt>장소</dt>
                                <dd>서울 종로구 계동길 89</dd>
                                <dt>관람료</dt>
                                <dd>무료</dd>
                                <dt>상태</dt>
                                <dd>종료</dd>
                            </dl>
                        </figcaption>
                    </figure>
                </div>
            </article>
        </section>

</body>
</html>