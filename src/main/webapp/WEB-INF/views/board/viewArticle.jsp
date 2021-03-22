<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<c:set var="article" value="${articleMap.article}" />
<c:set var="imageFileList" value="${articleMap.imageFileList}" />


<%
	request.setCharacterEncoding("UTF-8");
%>

<head>
<meta charset="UTF-8">
<title>글보기</title>
<style>
#tr_file_upload {display: none;}
#tr_btn_modify {display: none;}
.list{width:150px; text-align:center; background:#FF9933;}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
//파일추가 생성후 cnt증가
	var cnt = 1;
	function fn_addFile() {
		$("#d_file")
				.append("<br>" + "<input type='file' name='file"+cnt+"' />");
		cnt++;
	}

     function backToList(obj){
	    obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
     }
 
	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 //document.getElementById("i_imageFileName").disabled=false;
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("tr_file_upload").style.display="block";
		 document.getElementById("tr_btn").style.display="none";
	 }
	 
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/board/modArticle.do";
		 obj.submit();
	 }
	 
	 //삭제하기 버튼 클릭시
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(obj, isLogOn, replyForm, loginForm){
		 if (isLogOn != '' && isLogOn != 'false') { // 로그인 O
				 obj.action="${contextPath}/board/replyForm.do";
				 obj.submit();
			} else { //로그인 X
				alert("로그인 후 글쓰기가 가능합니다.")
				location.href = loginForm + '?action=/board/replyForm.do';
			}
	 }
	 
	 function readURL(input) {
	     if (input.files && input.files[0]) {
	         var reader = new FileReader();
	         reader.onload = function (e) {
	             $('#preview').attr('src', e.target.result);
	         }
	         reader.readAsDataURL(input.files[0]);
	     }
	 }  
 </script>
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
		<h2>게시판</h2>
		<form name="frmArticle" method="post" action="${contextPath}" enctype="multipart/form-data">
			<table border=0 align="center">
				<tr>
					<td class="list">글번호</td>
					<td><input type="text" value="${article.articleNO }" disabled /> <input type="hidden" name="articleNO" value="${article.articleNO}" /></td>
				</tr>
				<tr>
					<td class="list">작성자 아이디</td>
					<td><input type=text value="${article.id }" name="writer" disabled /></td>
				</tr>
				<tr>
					<td class="list">제목</td>
					<td><input type=text value="${article.title }" name="title" id="i_title" disabled /></td>
				</tr>
				<tr>
					<td class="list">내용</td>
					<td><textarea rows="20" cols="60" name="content" id="i_content" disabled />${article.content }</textarea></td>
				</tr>
				<!-- 다중 이미지 있을경우(일반글) -->
				<c:if test="${not empty imageFileList && imageFileList!='null' }">
					<c:forEach var="item" items="${imageFileList}" varStatus="status">
						<tr>
							<td class="list" rowspan="2">이미지${status.count }</td>
							<td><input type="hidden" name="originalFileName" value="${item.imageFileName }" /> <img src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${item.imageFileName}"
								id="preview"
							/><br></td>
						</tr>
						<tr>
							<!-- <td><input type="file" name="imageFileName " id="i_imageFileName" disabled onchange="readURL(this);" /></td> -->
							<td><input type="button" value="삭제" onclick="location.href = '${contextPath}/board/removeImage.do?articleNO=${article.articleNO}&imageFileName=${item.imageFileName}'" /></td>
						</tr>
					</c:forEach>
				</c:if>
				<!-- 단일 이미지 있을경우(답글) -->
				<c:if test="${not empty article.imageFileName && article.imageFileName!='null' }">
					<tr>
						<td class="list" rowspan="2"></td>
						<td><input type="hidden" name="originalFileName" value="${article.imageFileName }" /> <img src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}"
							id="preview"
						/><br></td>
					</tr>
					<tr>
						<!-- <td><input type="file" name="imageFileName " id="i_imageFileName" disabled onchange="readURL(this);" /></td> -->
						<td><input type="button" value="삭제" onclick="location.href = '${contextPath}/board/removeImage.do?articleNO=${article.articleNO}&imageFileName=${item.imageFileName}'" /></td>
					</tr>
				</c:if>

				<tr>
					<td class="list">등록일자</td>
					<td><input type=text value="<fmt:formatDate value="${article.writeDate}" />" disabled /></td>
				</tr>
				<tr id="tr_btn_modify" align="center">
					<td colspan="2"><input type=button value="수정반영하기" onClick="fn_modify_article(frmArticle)"> <input type=button value="취소" onClick="backToList(frmArticle)"></td>			
				</tr>
				
				<tr id="tr_btn">
					<td colspan="2" align="center">
					<c:if test="${member.id == article.id }">
						<input type=button value="수정하기" onClick="fn_enable(this.form)">
						<input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
					</c:if> <input type=button value="리스트로 돌아가기" onClick="backToList(this.form)"> 
							<%-- <input type=button value="답글쓰기" onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})"> --%>
							<input type=button value="답글쓰기" onClick="fn_reply_form(frmArticle,'${isLogOn}','${contextPath}/board/replyForm.do', 
                                '${contextPath}/member/loginForm.do')">
					</td>
				</tr>
			</table>
		</form>
	</section>

</body>
</html>