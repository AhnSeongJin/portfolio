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
<link rel="stylesheet" href="${contextPath}/resources/css/agree.css">
<script type="text/javascript" src="${contextPath}/resources/js/agree.js"></script>
</head>
<body>

    <section id="content">
        <!--네비게이션 영역-->
        <div class="location">
            <ul>
                <li>
                    <a href="${contextPath }/index.do" class="home">홈</a>
                </li>
                <li>
                    <a href="#">회원가입</a>
                </li>
            </ul>
        </div>
        <!--//네비게이션 영역-->
        <h2>회원가입</h2>
        <fieldset>
            <article>
                <h3>회원가입 약관</h3>
                <div class="boxAgree">
                    <h4>제 1장 : 총칙</h4>
                    
                    <h5>[제1조 : 목적]</h5>
                    <p>이 약관은 재단법인 아름지기가 운영하는 인터넷 홈페이지(www.arumjigi.org)가 제공하는 인터넷 관련 서비스(이하 '서비스')의 이용조건 및 절차, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
   
                   <h5>[제2조 : 정의]</h5>
                   <ol>
                       <li>(1) "사이트”란 아름지기가 정보, 재화, 용역 등을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 구축한 웹사이트를 말합니다.</li>
                       <li>(2) 사이트는 그 운영 목적에 따라 인터넷 도메인 주소가 다른 여러 개의 사이트로 구성될 수 있으며, 이용자는 한 개의 사이트에 등록을 하게 되면 별도의 등록 절차 없이 사용할 수 있게 됩니다.</li>
                       <li>(3)“회원”이란 “사이트”에 로그인하여 본 약관에 따라 아름지기가 제공하는 서비스를 받는 자를 말합니다.</li>
                   </ol>
                   
                   <h5>[제3조 : 약관의 효력 및 변경]</h5>
                   <ol>
                       <li>(1)본 약관은 본 서비스의 화면에 게시함으로써 효력이 발생합니다.</li>
                       <li>(2)서비스는 중요한 사유가 있을 때 이 약관을 변경할 수 있으며, 변경된 약관은 제2조 1항의 방법으로 공지함으로써 효력이 발생합니다.</li>
                       <li>(3)변경된 약관의 효력은 변경 전에 가입한 회원 전체에게 소급 적용됩니다.</li>
                   </ol>
                   
                   <h5>[제4조 : 약관외의 준칙]</h5>
                   <ol>
                       <li>(1)본 약관에 명시되어 있지 않은 사항은 전기통신기본법, 전기통신사업법, 전자거래기본법 등 관계법령에 규정된 바에 따릅니다.</li>
                   </ol>
                   
                   <h4>제 2장 : 회원 가입과 서비스 이용</h4>
                   
                   <h5>[제1조 : 회원의 정의]</h5>
                   <p>회원이란 아름지기가 회원으로 적합하다고 인정하는 일반개인으로, 본 약관에 동의하고 사이트회원 가입양식을 작성하여 'ID'와 '비밀번호'를 발급받은 사람을 말합니다.</p>
   
                   <ul>
                       <li>“웹 회원”은 회비를 내지 않고 아름지기 홈페이지를 통해 가입한 일반개인을 말합니다.</li>
                       <li>“연기부 회원”은 연 12만원의 연회비를 내는 개인회원, “평생기부 회원”은 300만원의 평생회비를 내는 개인회원을 말합니다.</li>
                       <li>“단체회원”은 연 450만원의 연회비를 내는 단체, 기업, 법인을 말합니다.</li>
                   </ul>
                   
                   <h5>[제2조 : 사이트가입의 성립]</h5>
                   <ol>
                       <li>(1) 사이트가입은 이용자의 이용신청에 대한 사이트의 이용승낙과 이용자의 약관내용에 대한 동의로 성립됩니다.</li>
                       <li>(2) 회원으로 가입하여 서비스를 이용하고자 하는 희망자는 아름지기에서 요청하는 개인신상정보를 제공해야 합니다.</li>
                       <li>(3) 이용자의 가입신청에 대하여 아름지기가 승낙한 경우, 서비스는 회원 ID와 기타 아름지기가 필요하다고 인정하는 내용을 이용자에게 통지합니다.</li>
                       <li>(4) 가입할 때 입력한 ID는 변경할 수 없으며, 한 사람에게 오직 한 개의 ID가 발급됩니다.</li>
                       <li>(5) 사이트는 다음 각 호에 해당하는 가입신청에 대하여는 승낙하지 않습니다.
                           <ul>
                               <li>가. 다른 사람의 명의를 사용하여 신청하였을 때</li>
                               <li>나. 본인의 실명으로 신청하지 않았을 때</li>
                               <li>다. 가입신청서의 내용을 허위로 기재하였을 때</li>
                               <li>라. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때</li>
                           </ul>
                       </li>
                   </ol>
       
                   <h5>[제3조 : 서비스의 내용]</h5>
                   <ol>
                       <li>(1) 사이트에서 제공하는 서비스의 내용은 다음과 같습니다.
                           <ol>
                               <li>1. 각 재단소식 메일 전송 서비스</li>
                               <li>2. 기타 아름지기가 정하거나 개발, 또는 다른 기관의 제휴를 받아 제공하는 서비스</li>
                               <li>3. 인터넷을 통한 각종 유/무료 프로그램 및 가입 신청</li>
                               <li>4. 온라인을 통한 인터넷 신청을 통한 결제 서비스</li>
                           </ol>
                       </li>
                       <li>(2) 아름지기는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 이 경우 아름지기는 추가 또는 변경내용을 회원에게 통지합니다.</li>
                   </ol>
                   
                   <h5>[제4조 : 서비스 이용 및 제한]</h5>
                   <ol>
                       <li>(1) 서비스 이용은 아름지기의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다. 다만, 통제할 수 없는 사유에 따른 서비스 중단(시스템 관리자의 고의 또는 과실이 없는 디스크 장애, 천재지변에 따른 시스템장애 등)은 사전통지가 불가능한 경우 예외로 합니다.</li>
                       <li>(2) 전항의 서비스 이용시간은 시스템 정기점검 등 아름지기가 필요한 경우, 회원에게 사전 통지한 후 제한할 수 있습니다.</li>
                   </ol>
                   
                   <h5>[제5조 : 서비스의 사용료]</h5>
                   <ol>
                       <li>(1) 서비스는 회원으로 등록한 모든 사람들이 무료로 사용할 수 있습니다.</li>
                       <li>(2) 서비스가 서비스를 유료화할 경우 유료화의 시기, 정책, 비용에 대하여 유료화 실시 이전에 서비스에 공시하여야 합니다.</li>
                   </ol>
                   
                   <h4>제 3장 : 서비스 탈퇴 및 이용 제한</h4>
                   
                   <h5>[제1조 : 서비스 탈퇴]</h5>
                   <ol>
                       <li>(1) 회원이 서비스의 탈퇴를 원하면 회원 본인이 직접 전자메일을 통해 운영자(arum@arumjigi.org)에게 해지신청을 요청하거나 회원서비스의 회원탈퇴 항목을 이용합니다.</li>
                       <li>(2) 탈퇴 신청 시 본인임을 알 수 있는 이름, 주민등록번호, ID, 전화번호, 해지사유를 알려주면, 가입기록과 일치여부를 확인한 후 가입을 해지합니다. 단, 탈퇴 또는 이용제한 후 6개월 동안 회원정보를 아름지기에서 보유하며, 6개월이 경과하면 자동으로 파기합니다. 이는 기부내역보호 및 당해기간동안의 재가입시 아름지기에서 제공하는 서비스의 편리성을 도모하기 위한 목적에만 국한됩니다. 아름지기에서 회원정보를 보유하고 있는 6개월 이내에라도 본인의 회원정보를 완전히 파기해줄 것을 아름지기 운영자에게 요구한다면 아름지기는 지체없이 개인정보를 파기합니다. 파기를 원하신다면 운영자(arum@arumjigi.org) 또는02)741-8375 으로 연락주시기 바랍니다.</li>
                       <li>(3) 탈퇴 여부는 기존의 ID와 비밀번호로 로그인이 되지 않는 것으로 확인 가능합니다.</li>
                   </ol>
                   
                   <h5>[제2조 : 서비스 이용제한]</h5>
                   <p>서비스는 회원이 다음 사항에 해당하는 행위를 했을 경우, 사전통지 없이 이용계약을 해지하거나 기간을 정하여 서비스이용을 중지할 수 있습니다.</p>
                   <ul>
                       <li>가. 공공질서 및 미풍양속에 반하는 경우</li>
                       <li>나. 범죄적행위에 관련되는 경우</li>
                       <li>다. 국익 또는 사회적공익을 저해할 목적으로 서비스이용을 계획 또는 실행할 경우</li>
                       <li>라. 타인의 ID 및 비밀번호를 도용한 경우</li>
                       <li>마. 타인의 명예를 손상시키거나 불이익을 주는 경우</li>
                       <li>바. 같은 사용자가 다른 ID로 이중등록을 한 경우</li>
                       <li>사. 서비스에 위해를 가하는 등 건전한 이용을 저해하는 경우</li>
                       <li>아. 기타 관련법령이나 여성재단이 정한 이용조건에 위배되는 경우</li>
                       <li>자. 서비스에서 얻은 정보를 여성재단의 사전 승낙 없이, 회원이 얻은 정보를 참고 외에 복제 또는 출판 및 방송 등에 사용하거나 제 3자에게 제공하는 경우</li>
                   </ul>
                   
                   
                   <h4>제 4장 : 의무</h4>
                   
                   <h5>[제1조 : 서비스의 의무]</h5>
                   <ol>
                       <li>(1) 서비스는 특별한 사정이 없는 한 회원이 서비스를 이용할 수 있도록 합니다.</li>
                       <li>(2) 서비스는 이 약관에서 정한 바에 따라 계속적, 안정적으로 제공할 의무가 있습니다.</li>
                       <li>(3) 서비스는 회원으로부터 소정의 절차에 의해 제기되는 의견에 대해서 적절한 절차를 거쳐 처리하며, 처리 시 일정기간이 소요될 경우 회원에게 그 사유와 처리일정을 알려주어야 합니다.</li>
                   </ol>
                   
                   <h5>[제2조 : 회원 정보 보안의 의무]</h5>
                   
                   <ol>
                       <li>(1) 회원의 ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있습니다.</li>
                       <li>(2) 자신의 ID가 부정하게 사용된 경우, 회원은 반드시 아름지기에게 그 사실을 통보해야 합니다.</li>
                       <li>(3) 서비스는 개인의 신분확인이 가능한 정보를 회원 혹은 사용자의 사전허락 없이 아름지기와 관계가 없는 제3자에게 팔거나 제공하지 않습니다. 그러나 아름지기는 자발적으로 제공되고 등록된 정보를 다음과 같은 경우에 활용할 수 있습니다.
                           <ul>
                               <li>가. 회원들에게 유용한 새 기능, 정보, 서비스 개발에 필요한 정보를 개발자들에게 제공하는 경우</li>
                               <li>나. 광고주들에게 서비스 회원과 사용자 집단에 대한 통계적(결코 회원 개개인의 신분이 드러나지 않는) 정보를 제공하는 경우</li>
                               <li>다. 회원과 사용자 선호에 따른 광고 또는 서비스를 실시하기 위하여 아름지기에서 사용하는 경우</li>
                           </ul>
                       </li>
                       <li>(4) 아름지기는 이용자의 개인정보 수집 시 서비스 제공에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
                           <ul>
                               <li>가. 성명</li>
                               <li>나. 희망 ID/비밀번호</li>
                               <li>다. 생년월일</li>
                               <li>라. 이메일 주소</li>
                               <li>마. 자택 전화번호/주소</li>
                               <li>바. 휴대전화번호</li>
                               <li>사. 직업</li>
                           </ul>
                           아름지기는 이용자의 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.
                       </li>
                       <li>(5) 게시판, 자료실 등의 페이지에 개인 신분 확인이 가능한 정보(사용자 이름, ID, e-mail 주소 등)가 자발적으로 공개될 수 있습니다. 이런 경우 공개된 정보가 제3자에 의해 수집되고 연관되어, 사용될 수 있으며 제3자로부터 원하지 않는 메시지를 받을 수도 있습니다. 제3자의 그러한 행위는 아름지기가 통제할 수 없습니다. 따라서 아름지기는 아름지기가 통제할 수 없는 방법에 의한 회원 정보의 발견 가능성에 대해 아무런 보장을 하지 않습니다.</li>
                   </ol>
                   
                   
                   <h5>[제3조 : 면책조항]</h5>
                   <ol>
                       <li>(1) 서비스는 천재지변 또는 이에 준하는 불가항력으로 인하여 제공할 수 없는 경우에는 서비스를 제공하지 않습니다.</li>
                       <li>(2) 서비스는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.</li>
                       <li>(3) 서비스는 회원 본인이 정보를 오류로 기재하여 문제가 발생한 사항에 대하여 책임을 지지 않습니다.</li>
                       <li>(4) 서비스는 이용회원이 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.</li>
                   </ol>
                   
                   <h4>제 5장 : 분쟁조정</h4>
                   <ol>
                       <li>(1) 본 이용약관에 규정된 것을 제외하고 발생하는 서비스 이용에 관한 제반 문제에 관한 분쟁은 최대한 쌍방합의에 의해 해결하도록 합니다.</li>
                       <li>(2) 서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 아름지기의 소재지를 관할하는 법원을 관할법원으로 합니다. </li>
                   </ol>
                   
                   <h4>제 6장 : 후원금의 적립 및 사용</h4>
                   
                   <h5>[제1조 : 후원금 적립]</h5>
                   <ol>
                       <li>(1)회원은 자신의 현금결제수단(cms, 신용카드, 무통장입금, 실시간계좌이체 등)으로 후원금을 적립할 수 있습니다.</li>
                       <li>(2)회원들의 후원금으로 적립된 각 기금내역은 아름지기 사이트 내의 마이페이지를 통해 게시합니다.</li>
                   </ol>
                   
                   <h5>[제2조 : 후원금의 사용]</h5>
                   
                   <ol>
                       <li>(1)회원들에 의해 적립된 후원금은 아름지기의 사업과 함양한옥 운영 및 사무국 운영에 사용됩니다. </li>
                       <li>(2)후원금 사용 내역은 아름지기 정관 제26조 연간기부금 모금액 및 활동실적의 공개에 따라 국세청 공익법인 결산서류 등 공시시스템을 통해 투명하게 공개됩니다.</li>
                   </ol>
                   
                   <h4>제 7장 : 기타</h4>
                   
                   <h5>[제1조 : 정보의 제공]</h5>
                   
                   <p>서비스는 회원에게 기부에 관련된 자료나 후원사의 상품정보 등을 전자우편이나 서신우편 등의 방법으로 제공할 수 있습니다.</p>
                   
                   <h4>[부칙]</h4>
                   
                   <p>이 약관은 2013년 9월 11일부터 시행합니다.</p>
                   
                </div>
                <div class="inputItem">
                    <span>회원가입 약관에 동의합니다.</span>
                    <input type="checkbox" class="agreeChk" id="agreeChk01" name="agreeChk">
                    <label for="agreeChk01">동의</label>
                </div>
                <h3>개인정보 수집 및 이용</h3>
                <div class="boxAgree">
                    <div class="inner">
                        <p>(재)아름지기은(는) 회원가입, 각종 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있으며, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.</p>
                        <dl>
                            <dt>* 수집방법 : </dt>
                            <dd> 홈페이지 회원 가입.</dd>
                            <dt>* 수집목적 : </dt>
                            <dd>홈페이지 회원관리, 연구·교육 사업, 문화예술기획</dd>
                            <dt>* 수집항목 : </dt>
                            <dd>이름 , 로그인ID , 비밀번호 , 생년월일, 이메일, 자택전화번호, 휴대전화번호, 자택주소, 직업, 소속 및 직위, 기업명</dd>
                            <dt>* 수집기간 : </dt>
                            <dd>동의일로부터 동의철회(직권해지)시 까지</dd>
                        </dl>
                        
                        <p>이용자의 요청에 의해 해지 또는 삭제된 개인정보는 "(재)아름지기가 수집하는 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</p><p>
                        </p><p>(재)아름지기은(는) 귀하의 인증을 위하여 귀하 ID가 저장된 쿠키를 운영하고 있으며, 이와 같이 자동 수집·저장되는 정보는 본인 확인 및 서비스이용을 위한 용도 이외에는 사용하고 있지 아니합니다.</p>
                        <p>귀하는 쿠키에 대한 선택권을 가지고 있습니다.</p>
                        <p>웹브라우저에서 [도구] → [인터넷 옵션] → [보안] → [사용자정의수준]을 선택함으로써 모든 쿠키를 허용하거나 쿠키가 저장될 때마나 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수 있습니다.</p>
                        <p>단, 귀하가 쿠키를 거부하였을 경우 본인인증 및 서비스 제공에 어려움이 있을 수 있습니다.</p>
                        
                        
                        <p>(재)아름지기은(는) 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</p>
                        <dl>
                            <dt>* 담당부서 : </dt>
                            <dd>후원문화팀</dd>
                            <dt>* 전화번호 : </dt>
                            <dd>02-741-8375</dd>
                            <dt>* E-mail : </dt>
                            <dd>arum@arumjigi.org </dd>
                        </dl>
                        
                        <p>귀하께서는 (재)아름지기의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.</p>
                        <p>(재)아름지기은(는) 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</p>
                      </div>
                 </div>
                <div class="inputItem">
                    <span>회원가입 약관에 동의합니다.</span>
                    <input type="checkbox" class="agreeChk" id="agreeChk02" name="agreeChk">
                    <label for="agreeChk02">동의</label>
                </div>
                <div class="boxBtn">
                    <a href="#" class="join" onclick="this.href=nextPage();">가입하기</a>
                    <a href="#" class="cancel">취소</a>
                </div>
            </article>
        </fieldset>
    </section>

</body>
</html>