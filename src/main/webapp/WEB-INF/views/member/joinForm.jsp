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
    <link rel="stylesheet" href="${contextPath}/resources/css/join.css">
    <script type="text/javascript" src="${contextPath}/resources/js/join.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">/*주소찾기 다음 우편번호 서비스*/</script>
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
                        <a href="#">회원가입</a>
                    </li>
                </ul>
            </div>
            <!--//네비게이션 영역-->
            <h2>회원가입</h2>
            <article>
                <h3>회원정보 입력</h3>
                <form name="join_form" action="${contextPath}/member/addMember.do" method="post">
                    <div class="inputItem">
                        <label for="id">아이디</label>
                        <input type="text" name="id" id="id" class="input" title="아이디" placeholder="영문, 숫자 조합 5자 이상으로 첫자는 영문이어야 합니다.">
                        <input type="button" class="btn" value="중복확인" onclick="fn_overlapped();">
                        <p class="desc">* 영문, 숫자 조합 5자 이상으로 첫자는 영문이어야 하며, 한글은 입력하실 수 없습니다.</p>
                    </div>
                    <div class="inputItem">
                        <label for="name">이름</label>
                        <input type="text" name="name" id="name" class="input" title="이름">
                    </div>
                    <div class="inputItem">
                        <label for="pwd">비밀번호</label>
                        <input type="password" name="pwd" id="pwd" class="input" title="비밀번호" placeholder="영문 / 숫자를 조합하여 4자 이상 입력해주세요.">
                    </div>
                    <div class="inputItem">
                        <label for="pwd2">비밀번호 확인</label>
                        <input type="password" name="pwd2" id="pwd2" class="input" title="비밀번호 확인" placeholder="입력한 비밀번호를 재입력해주세요.">
                    </div>
                    <!--이메일 입력 영역-->
                    <div class="inputItem">
                        <label for="email">이메일</label>
                        <div class="emailDetail">
                            <input type="text" name="email" id="email" class="input email" title="이메일">
                            <span>@</span>
                            <input type="text" name="domain" id="email_domain" class="input email" title="이메일">
                            <select name="email3" id="email3" class="select selMail" title="이메일">
                                <option value="">직접입력</option>
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
                            </select>
                        </div>
                    </div>
                    <!--//이메일 입력 영역-->
                    <!--휴대전화 인증 영역-->
                    <div class="inputItem">
                        <label for="phone">휴대전화</label>
                        <input type="number" name="phone" id="phone" class="input" title="휴대전화" placeholder="'-'없이 10~11자리를 입력해주세요.">
                        <input type="button" value="인증번호 받기" class="btn phone_btn" onclick="call();" id="btnPhone">
                    </div>
                    <div class="inputItem">
                        <label for="cNum">인증번호</label>
                        <input type="number" name="cNum" id="cNum" class="input" title="인증번호" placeholder="인증번호 6자리를 입력해주세요.">
                        <input type="button" value="인증번호 확인" class="btn" id="btnCertify" onclick="btnCerti();">
                        <div id="timeZone"></div>
                    </div>
                    <!--//휴대전화 인증 영역-->
                    <!-- 주소찾기는 다음 우편번호 서비스 사용 -->
                    <div class="inputItem">
                        <label for="postcode" id="add_label">자택주소</label>
                        <div id="address_area">
                            <input type="text" id="postcode" name="postcode" placeholder="우편번호" title="우편번호">
                            <input type="button" class="btn btnAddr" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" id="address" name="address" placeholder="주소" title="주소"><br>
                            <input type="text" id="detailAddress" name="detailAddress" class="addInput" placeholder="상세주소" title="상세주소">
                            <input type="text" id="extraAddress" name="extraAddress" class="addInput" placeholder="참고항목" title="참고항목">
                        </div>
                    </div>
                    <!-- //주소찾기는 다음 우편번호 서비스 사용 -->
                    <div class="inputItem">
                        <label>이메일수신여부</label>
                        <ul id="email_list">
                            <li>
                                <input type="radio" id="maileuse1" name="emailsts" checked
                                value="Y">
                                <label for="maileuse1" class="mailLabel">수신</label>
                            </li>
                            <li>
                                <input type="radio" id="maileuse2" name="emailsts" value="N">
                                <label for="maileuse2" class="mailLabel">비수신</label>
                            </li>
                        </ul>
                        <p class="desc">(재)아름지기에서 진행하는 교육, 공연, 전시 및 다양한 문화 컨텐츠 정보를 받아 보실 수 있습니다.</p>
                    </div>
                    <div class="boxBtn">
                        <button type="submit" class="join" onclick="joinBtn();">회원등록</button>
                        <button type="reset" class="cancel">취소</button>
                    </div>
                </form>
            </article>
        </section>

</body>
</html>