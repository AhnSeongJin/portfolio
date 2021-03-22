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
<link rel="stylesheet" href="${contextPath}/resources/css/news_Q&A.css">
<script type="text/javascript" src="${contextPath}/resources/js/news_Q&A.js"></script>
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
                        <a href="#">Q&A</a>
                    </li>
                </ul>
            </div>
            <!--//네비게이션 영역-->
            <h2>Q&A</h2>
            <article>
                <!--Q&A 입력 영역-->
                <form method="get">
                    <div class="qnaWrite">
                        <p>* 등록하신 글의 진행상황은 ‘My Page &gt; 나의 상담내역’에서 확인 하실 수 있습니다.</p>
                        <div class="bxForm">
                            <!--제목 입력란-->
                           <div class="inputItem">
                               <strong>제목</strong>
                               <input type="text" name="title" title="제목">
                           </div>
                           <!--//제목 입력란-->
                           <!--질문유형선택-->
                           <div class="inputItem">
                               <strong>구분</strong>
                               <select name="category" id="q_type" title="질문유형 선택">
                                   <option selected="">질문유형 선택</option>
                                   <option>아트샵</option>
                                   <option>헤리티지</option>
                                   <option>환경가꾸기</option>
                                   <option>기타</option>
                               </select>
                           </div>
                           <!--//질문유형선택-->
                           <!--이메일 입력란-->
                           <div class="inputItem">
                                <strong>이메일</strong>
                                <div class="iEmail">
                                    <div class="iEmailDetail">
                                    <input type="text" name="email1">
                                       <span class="insert">@</span>
                                       <input type="text" name="email2" id="email_domain">
                                       <!--스크립트 참고(html에서 바로 선택 값 넣는법)
                                        <select onchange="javascript:document.getElementById('email_domain').value=this.value;"> -->
                                        <select id="select">
                                           <option value="" selected="">선택</option>
                                           <option value="naver.com">naver.com</option>
                                           <option value="nate.com">nate.com</option>
                                           <option value="hanmail.net">hanmail.net</option>
                                           <option value="gmail.com">gmail.com</option>
                                           <option value="yahoo.com">yahoo.com</option>
                                           <option value="dreamwiz.com">dreamwiz.com</option>
                                           <option value="empal.com">empal.com</option>
                                           <option value="freechal.com">freechal.com</option>
                                           <option value="hanafos.com">hanafos.com</option>
                                           <option value="hitel.net">hitel.net</option>
                                           <option value="hotmail.com">hotmail.com</option>
                                           <option value="korea.com">korea.com</option>
                                           <option value="lycos.co.kr">lycos.co.kr</option>
                                           <option value="paran.com">paran.com</option>
                                           <option value="yahoo.co.kr">yahoo.co.kr</option>
                                           <option value="직접입력">직접입력</option>
                                       </select>
                                   </div>
                               </div>
                           </div>
                           <!--//이메일 입력란-->
                           <!--내용 입력란-->
                           <div class="inputItem">
                               <strong>내용</strong>
                               <textarea name="content" title="내용"></textarea>
                           </div>
                           <!--//내용 입력란-->
                       </div>
                    </div>
                    <div class="bxBtn">
                        <input type="submit" class="btnQna btnGray" value="확인">
                        <input type="reset" value="취소" class="btnQna btnSilver">
                    </div>
                </form>
                <!--//Q&A 입력 영역-->
                <!--자주묻는질문-->
                <div class="listHead">
                    <h3>자주묻는 질문</h3>
                    <div class="fr">
                    <form>	
                    <fieldset>
                        <div class="inputItem">
                            <select title="검색 영역 선택" id="search_key" name="search_key">
                                <option value="title" selected="">제목</option>	<option value="content">내용</option>
                            </select>
                            <input type="search" title="검색어 입력" id="search_val" name="search_val" placeholder="검색어를 입력해주세요" value="">
                            <button class="ir" type="submit" id="btnSearch">검색하기</button>
                        </div>
                    </fieldset>
                    </form>
                     </div>
                 </div>
                 <table class="qnaTbl">
                    <caption></caption>
                    <colgroup>
                        <col style="width:13%">
                        <col style="width:77%">
                        <col style="width:10%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">NO</th>
                            <th scope="col">제목</th>
                            <th scope="col">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- loop -->
                        <!-- 질문 -->
                        <tr>
                            <td>7</td>
                            <td class="tl question">아름지기 재단이 하는 일은 무엇입니까?</td>
                            <td>11067</td>
                        </tr>
                        <tr class="answer">
                            <td colspan="3" class="tl">
                                <div class="boxAnswer">
                                    아름지기는 지정, 비지정 문화유산을 지키고 돌보는 일을 하는 비영리 단체입니다. 문화재청과 비슷한 일을 한다고 볼 수 있는데요. 저희 재단은 개인과 기업의 후원을 받아 방치되거나 훼손된 문화유산들을 보존하는 일과 우리 전통문화가 생활 가까이에서 활용될 수 있음을 알리는 일을 하고 있습니다. 보다 자세한 사항은 홈페이지 "아름지기 사업" 코너를 통해 살펴보실 수 있습니다.
                                </div>
                            </td>
                        </tr>
                        <!-- 질문 -->
                        <!-- 질문 -->
                        <tr>
                            <td>6</td>
                            <td class="tl question">아름지기 회원이 되려면 어떻게 해야 하나요?</td>
                            <td>9777</td>
                        </tr>
                        <tr class="answer">
                            <td colspan="3" class="tl">
                                <div class="boxAnswer">
                                    홈페이지 "회원가입" 코너에서 회원가입에 관한 안내를 참조하셔서 사무국으로 연락주시면 회원가입절차에 대해 자세히 안내해드립니다.
                                </div>
                            </td>
                        </tr>
                        <!-- 질문 -->
                        <!-- 질문 -->
                        <tr>
                            <td>5</td>
                            <td class="tl question">아름지기 한옥이 있다고 들었습니다. 어떤 곳인가요?</td>
                            <td>9774</td>
                        </tr>
                        <tr class="answer">
                            <td colspan="3" class="tl">
                                <div class="boxAnswer">
                                    현재 안국동 3번지에 아름지기 한옥사옥이 있으며, 아름지기 안국동 한옥은 전시공간과 회의공간으로 이용되고 있습니다. 아름지기 한옥은 한옥에 관심을 갖고 찾아오시는 분들에게 무료로 관람을 허용하고 있으며 필요한 경우 관리인의 안내를 받으실 수 있습니다. 개방시간은 월요일부터 금요일까지 오전 10시부터 오후 5시까지입니다.
                                </div>
                            </td>
                        </tr>
                        <!-- 질문 -->
                        <!-- 질문 -->
                        <tr>
                            <td>4</td>
                            <td class="tl question">한옥에서 생활하는 데 불편함은 없나요?</td>
                            <td>8866</td>
                        </tr>
                        <tr class="answer">
                            <td colspan="3" class="tl">
                                <div class="boxAnswer">
                                    '한옥'하면 떠오르는 이미지 중 하나가 '불편함'일텐데요. 아름지기가 추구하는 일 가운데 하나가 바로 한옥이 현대인이 살기에 결코 불편한 곳이 아니라는 점을 알리는 것입니다. 현재 아름지기 한옥사옥은 화장실과 부엌 등을 현대적으로 개보수하여 불편함을 없애되 한옥의 기본적인 형태 및 용도는 그대로 살려 우리 전통가옥의 멋스러움을 유지하고 있습니다. 전통의 아름다움과 현대의 실용성이 조화를 이뤄 현대인들이 생활하는데 불편함이 없도록 다양한 아이디어를 내었습니다. 한옥은 집 전체가 나무로 지어져 있는 만큼 정서적인 안정감을 줄 뿐만 아니라 많은 스트레스와 질병에 시달리는 현대인의 육체적 건강함을 지키는 데 큰 효과를 주기도 합니다.
                                </div>
                            </td>
                        </tr>
                        <!-- 질문 -->
                        <!-- 질문 -->
                        <tr>
                            <td>3</td>
                            <td class="tl question">아름지기는 한옥을 고쳐주는 곳인가요?</td>
                            <td>9280</td>
                        </tr>
                        <tr class="answer">
                            <td colspan="3" class="tl">
                                <div class="boxAnswer">
                                    아름지기는 소중한 우리문화유산을 지키고 가꾸는 일을 하기 위해 생겨난 비영리 단체이기 때문에 한옥 개보수관련 영업 및 건축업은 하지 않습니다. 다만 한옥에 관심을 갖고 자문을 원하시는 분들에게는 저희가 아는 범위 내에서 성심껏 상담을 해드립니다.
                                </div>
                            </td>
                        </tr>
                        <!-- 질문 -->
                        <!-- 질문 -->
                        <tr>
                            <td>2</td>
                            <td class="tl question">한옥 개보수에 대한 자문을 구하려면 어떻게 해야 하나요?</td>
                            <td>7792</td>
                        </tr>
                        <tr class="answer">
                            <td colspan="3" class="tl">
                                <div class="boxAnswer">
                                    저희 재단은 한옥을 지으려는 분들이나 오래된 한옥을 개보수하기를 원하는 분들에게 생생한 지침서 역할을 하고자 안국동 한옥사옥을 짓는 전 과정을 『아름지기의 한옥 짓는 이야기』 라는 책을 통해 자세히 소개하였습니다. 보다 구체적인 자문을 원하시면 아름지기 한옥사옥(☎ 02-733-8375)으로 연락주시면 도움을 드릴 수 있는 방법을 안내해드리겠습니다.
                                </div>
                            </td>
                        </tr>
                        <!-- 질문 -->
                        <!-- 질문 -->
                        <tr>
                            <td>1</td>
                            <td class="tl question">함양에 아름지기 한옥이 지어졌다고 들었습니다. 아름지기 함양한옥은 어떠한 곳입니까?</td>
                            <td>8035</td>
                        </tr>
                        <tr class="answer">
                            <td colspan="3" class="tl">
                                <div class="boxAnswer">
                                    아름지기는 한옥의 정신과 아름다움을 널리 알리기 위한 일환으로 우리 땅 곳곳에서 쓰러져가는 전통살림집들을 찾아내어 새롭게 가꾸어나가는 일을 하고 있습니다. 아름지기 함양한옥은 이러한 취지에서 지은 한옥입니다. 지난 2003년 경상남도 함양에 있는 한옥을 기증받아 안국동 한옥과 마찬가지로 개보수하여 2005년 11월에 완공, 2006년 5월에 정식으로 오픈하였습니다. 아름지기 함양한옥은 우리 전통가옥의 아름다움과 멋을 향유할 수 있는 한옥문화체험으로 운영되고 있습니다. 보다 자세한 사항은 홈페이지의 "함양한옥" 코너에서 살펴보실 수 있습니다. (아름지기 함양한옥 홈페이지 http://www.arumjigihamyang.org)
                                </div>
                            </td>
                        </tr>
                        <!-- 질문 -->
                        
                        <!-- //loop -->
                    </tbody>
                </table>
                <div class="qnaGuide">
                    <h4><span>아래와 같은 사항에 대해서는 답변이 없을 수도 있사오니 이점 참고하시기 바랍니다.</span></h4>
                    <ul>
                        <li>· 문의내용에 감정적인 내용을 담을 경우(욕설 등의 표현)</li>
                        <li>· 기타 본 홈페이지와 관계없는 내용을 문의한 경우</li>
                    </ul>
                </div>
            </article>
        </section>
        
</body>
</html>