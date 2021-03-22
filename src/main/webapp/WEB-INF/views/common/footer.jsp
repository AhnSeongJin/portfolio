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
<title>Insert title</title>
</head>
<body>

        <!--FOOTER 영역-->
        <footer>
            <div id="f_wrap">
                <div id="f_logo">
                    <img src="${contextPath}/resources/images/common/logo_footer.png">
                </div>
                <div id="f_contents">
                    <ul>
                        <li>
                            <a>이용약관</a>
                        </li>
                        <li>
                            <a>개인정보처리방침</a>
                        </li>
                        <li>
                            <a>이메일무단수집거부</a>
                        </li>
                        <li>
                            <a>사업자정보확인</a>
                        </li>
                    </ul>
                    <div id="ksnet_logo">
                        <img src="${contextPath}/resources/images/common/logo_ksnet.png">
                    </div>
                    <p>재단법인 아름지기 &nbsp;|&nbsp; 대표자 : 신연균 &nbsp;|&nbsp; 서울특별시 종로구 효자로 17(통의동 35-33)<br>사업자등록번호 : 101-82-08989 &nbsp;|&nbsp; 통신판매신고 : 제2016-서울종로-0978호<br>
                        <span>Copyright ⓒ 2018 ARUMJIGI all rights reserved.</span>
                    </p>
                    <div id="ksnet_logo">
                        <img src="${contextPath}/resources/images/common/logo_ksnet.png">
                    </div>
                </div>
            </div>
        </footer>
        <!--//FOOTER 영역-->

</body>
</html>