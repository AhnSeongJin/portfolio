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
</head>
<body>

	<form name="idCheck" method="get" action="${contextPath}/member/joinForm.com" onsubmit="return blankCheck(this)">
        <label name="uId">아이디</label>
        <input type="text" name="uId">
        <input type="submit" value="중복확인">
    </form>
    
    <script>
    function blankCheck(f){
        //정규표현식
        var idReg = /^[a-z]+[a-z0-9]{4,19}$/g;

		var id = f.id.value;
        id = id.trim();
        alert($("input[name=id]").val());
		if(id.length=="" || id.length<5){ 
            alert('아이디를 입력해주세요.');
            return false; 
        }else if( !idReg.test( $("input[name=id]").val() ) ) {
            alert("아이디는 영문, 숫자 조합 5자 이상으로 첫자는 영문이어야 하며, 한글은 입력하실 수 없습니다.");
            return false;
        }else{
            alert('사용가능한 아이디입니다.')
            return true;
        }
	}
    </script>
    
</body>
</html>