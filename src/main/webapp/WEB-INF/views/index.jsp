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
<html lang="ko">
<head>
    <title>재단법인 아름지기</title>
	<!--swiper 플러그인-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <link rel="stylesheet" href="${contextPath}/resources/css/index.css">
	
	
</head>
<body>

    <div id="wrap">

        <!--컨텐츠 영역-->
        <section id="content">
            <!--메인 배너-->
            <div class="banner_wrap">
				<div class="swiper-container main-banner">
					<div class="swiper-wrapper" id="main_banner_area">
						<!--swiper 반복-->
						<div class="swiper-slide">
							<div class="main_banner_01">
								<div class="title01">
									<h2>지키다. 잇다.</h2>
									<h3>우리의 문화가 우리다울 수 있도록</h3>
									<p>아름지기는 자연·문화유산을 보존, 정비하고 새로운 문화공간으로 가꾸는 등<br>전통의 창조적 계승을 통해 내일의 문화유산을 창조합니다</p>
								</div>
							</div>
						</div>
						
						<!--swiper 반복-->
						<div class="swiper-slide">
							<div class="main_banner_02">
								<div class="title01">
									<h2>나누다. 공감하다.</h2>
									<h3>품격있는 문화의 아름다움을 널리 알립니다.</h3>
									<p>우리의 삶에 녹아있는 한국문화에 대한 깊은 이해를 통해<br>세계인이 공감하는 아름다움을 발견하고 나눕니다.</p>
								</div>
							</div>
						</div>
						
						<!--swiper 반복-->
						<div class="swiper-slide">
							<div class="main_banner_03">
								<div class="title01">
									<h2>함께 배우다. 성장하다.</h2>
									<h3>우리 문화를 이끌어가는 사람들을 응원합니다.</h3>
									<p>문화는 문화를 아끼고 사랑하는 이들이 만들어나가는 것입니다.<br>전통장인, 현대 작가 및 디자이너와 함께 우리 문화를 이끄는 방법에 대해 고민합니다.</p>
								</div>
							</div>
						</div>

					</div>
					<div class="swiper-button-next mainBtnNext"></div><!-- 다음 버튼 -->
					<div class="swiper-button-prev mainBtnPrev"></div><!-- 이전 버튼 -->
				</div>
            </div>
            <!--//메인 배너-->
            <!--2번 타이틀-->
            <article class="mainArticle">
                <!--왼쪽 타이틀 영역-->
                <div class="title02">
                    <h2>
                        <img src="${contextPath}/resources/images/index/title_main_article02.png">
                    </h2>
                    <ul class="sns">
                        <li>
                            <a class="ir" id="blog">블로그</a>
                        </li>
                        <li>
                            <a class="ir" id="facebook">페이스북</a>
                        </li>
                        <li>
                            <a class="ir" id="insta">인스타그램</a>
                        </li>
                        <li>
                            <a class="ir" id="youtube">유튜브</a>
                        </li>
                    </ul>
                    <!--페이지 이동 리스트 2개-->
                    <ul class="clear">
                        <li>
                            <a href="./program.html">
                                <strong>프로그램 안내<i class="ir">이동</i></strong>
                                <span>자세히 알아보기</span>
                            </a>
                        </li>
                        <li>
                            <a href="./news.html">
                                <strong>e-뉴스레터<i class="ir">이동</i></strong>
                                <span>뉴스레터 신청하기</span>
                            </a>
                        </li>
                    </ul>
                    <!--//페이지 이동 리스트 2개-->
                </div>
                <!--/왼쪽 타이틀 영역-->
                <!--오른쪽 정보 리스트-->
                <!-- Swiper -->
                <div class="frame swiper-container">
                    <div class="wipper swiper-wrapper">
                        <div class="swiper-slide">
                            <ul>
                                <li>
                                    <figure>
                                    <img src="${contextPath}/resources/images/index/title02_banner.jpg">
                                    <figcaption>
                                        <span>News</span>
                                        <a href="http://arumjigi.org/data/bbs/005/1582700929.pdf">
                                            <strong>2019 연차보고서 발행</strong>
                                            <p>2001년부터 계속된 아름지기의 긴 여정을 변함없이 따뜻한 마음으로 함께 걸어주신 아름지기 가족 여러분께 진심으로 감사드립니다.</p>
                                        </a>
                                    </figcaption>
                                </figure>
                                </li>
                                <li>
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner01.jpg">
                                        <figcaption>
                                            <span>Art Shop</span>
                                            <a>
                                                <strong>새로운 색감의 노방봉지를 소개합니다</strong>
                                                <p>아름지기의 노방봉지가 새로운 모습으로 여러분을 찾아갑니다.</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                                <li>
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner02.jpg">
                                        <figcaption>
                                            <span>News</span>
                                            <a>
                                                <strong>아름지기와 서울번드가 만납니다</strong>
                                                <p>아름지기와 서울번드가 내일의 전통을 이야기합니다.</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                                <li class="margin">
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner03.jpg">
                                        <figcaption>
                                            <span>NEWS</span>
                                            <a>
                                                <strong>도무스 코리아, 아름지기 전시 소개</strong>
                                                <p>도무스 코리아가 아름지기 기획전시의 생생한 이미지를 독자들에게 전달합니다.</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                                <li class="margin">
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner04.jpg">
                                        <figcaption>
                                            <span>ARTSHOP</span>
                                            <a>
                                                <strong>도트무늬 가방과 주머니 출시</strong>
                                                <p>붓 끝에서 전해지는 멋과 생동감을 담았습니다.</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-slide">
                            <ul>
                                <li>
                                    <figure>
                                    <img src="${contextPath}/resources/images/index/title02_banner_00.jpg">
                                    <figcaption>
                                        <span>News</span>
                                        <a href="http://arumjigi.org/data/bbs/005/1582700929.pdf">
                                            <strong>한국예술종합학교 김봉렬 총장 인터뷰</strong>
                                            <p>2001년부터 계속된 아름지기의 긴 여정을 변함없이 따뜻한 마음으로 함께 걸어주신 아름지기 가족 여러분께 진심으로 감사드립니다.</p>
                                        </a>
                                    </figcaption>
                                </figure>
                                </li>
                                <li>
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner_01.jpg">
                                        <figcaption>
                                            <span>Art Shop</span>
                                            <a>
                                                <strong>아름지기-한국문화전통대학교,업무협약 체결</strong>
                                                <p>전통문화 계승과 발전을 위해 업무협약을 체결하였습니다.</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                                <li>
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner_02.jpg">
                                        <figcaption>
                                            <span>News</span>
                                            <a>
                                                <strong>'오픈하우스서울' 아름지기 답사</strong>
                                                <p>시민 건축 답사프로그램 '오픈하우스 서울'에서 아름지기를 방문했습니다.</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                                <li class="margin">
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner_03.jpg">
                                        <figcaption>
                                            <span>EXHIBITION</span>
                                            <a>
                                                <strong>구글 아트앤컬쳐X 아름지기 전시</strong>
                                                <p>아름지기 전시는 구글 아트앤컬쳐를 통해 여러분께 더욱 가까이 다가갑니다.</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                                <li class="margin">
                                    <figure>
                                        <img src="${contextPath}/resources/images/index/title02_banner_04.jpg">
                                        <figcaption>
                                            <span>Project</span>
                                            <a>
                                                <strong>궁궐전각의 문을 빛으로 열다</strong>
                                                <p>창덕궁 희정당·대조전 전등 및 전기 시설 개선 사업</p>
                                            </a>
                                        </figcaption>
                                    </figure>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="swiper-button-next" id="right"></div>
                    <div class="swiper-button-prev" id="left"></div>
                </div>
            </article>
            <!--3번 타이틀-->
            <article class="mainArticle" id="responsive">
                <div id="title03_banner">
                    <div class="title03">
                        <h2>
                            <img src="${contextPath}/resources/images/index/title_main_article03.png">
                        </h2>
                        <p>이 땅의 모든 문화유산을 두루 소중히 보살피고<br>세계로 우리 문화의 가치를 나누고자 하는 아름지기의 꿈에 함께 해주세요.</p>
                        <ul class="clear">
                            <li>
                                <a href="${contextPath}/resources/support_member.html">
                                    <strong>개인후원<i class="ir">이동</i></strong>
                                    <span>연회원/평생후원</span>
                                </a>
                            </li>
                            <li>
                                <a href="${contextPath}/resources/support_member.html">
                                    <strong>지정기부후원<i class="ir">이동</i></strong>
                                    <span>웹회원/지정사업기부</span>
                                </a>
                            </li>
                            <li>
                                <a href="${contextPath}/resources/support_group.html">
                                    <strong>단체/법인후원<i class="ir">이동</i></strong>
                                    <span>단체회원/지정사업기부</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div id="sponsor">
                        <ul>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464759.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464844.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464861.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464874.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464891.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464906.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464926.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464947.png"></li>
                            <li><img src="${contextPath}/resources/images/index/sponsor/1538464971.png"></li>
                        </ul>
                        <div class="nextBtn"></div><!-- 다음 버튼 -->
					    <div class="prevBtn"></div><!-- 이전 버튼 -->
                    </div>
                </div>   
            </article>
            <!--//3번 타이틀-->
            <!--4번 타이틀-->
            <article class="mainArticle" id="title04_area">
                <div class="title04">
                    <h2>
                        <img src="${contextPath}/resources/images/index/title_main_article04.png">
                    </h2>
                    <p>선조들의 지혜와 장인의 숨결이 하나하나 깃든 아름지기 문화상품은<br>현대적인 디자인과 예술 감각이 어우러져 여러분의 일상에 기품있게 다가갑니다.</p>
                </div>
                <div class="clear" id="shop_list">
                    <ul class="shop">
						<div class="swiper-container bottom_slide">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop01.jpg">노방 봉투</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop02.jpg">백자 연필꽂이</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop03.jpg">백동 트레이</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop04.jpg">방짜 백동 볼 中</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop05.jpg">장짜 주석 그릇</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop06.jpg">한지 테이블매트</a>
									</li>
								</div>
								<div class="swiper-slide">
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop07.png">백자 촛대</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop08.jpg">은 디저트 스푼포크</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop09.jpg">한줄 김밥통</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop10.jpg">천영양모 카드지갑</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop11.jpg">백자 전접시</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop12.jpg">달항아리 미니어처</a>
									</li>
                                </div>
                                <div class="swiper-slide">
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop13.jpg">12각 주병과 잔</a>
									</li>
									<li>
										<a><img src="${contextPath}/resources/images/index/shop/shop14.jpg">보료</a>
									</li>
								</div>
							</div>
							<div class="swiper-pagination"></div>
						</div>
                        
                    </ul>
                    <div id="title04_banner">
                        <a>
                            <img src="${contextPath}/resources/images/index/shop01_banner.jpg">
                        </a>
                    </div>
                </div>
            </article>
            <!--//4번 타이틀-->
        </section>
        <!--//컨텐츠 영역-->

    </div>
    
</body>
</html>