$(document).ready(function(){
    //도메인 선택시 입력란에 값 넣기
    $('#email3').change(function(){
        var email3 = $('#email3').val();
        $('#email_domain').val(email3);
        //미선택시 입력란도 공백
        if(email3 == ''){
            $('#email_domain').val('');
        }
    });

});

//아이디
var user_id = document.getElementsByClassName('input')[0];
//이름
var user_name = document.getElementsByClassName('input')[1];
//비밀번호
var user_pwd0 = document.getElementsByClassName('input')[2];
//비밀번호 확인
var user_pwd1 = document.getElementsByClassName('input')[3];
//이메일 아이디
var user_email = document.getElementsByClassName('input')[4];
//이메일 도메인
var user_domain = document.getElementsByClassName('input')[5];
//휴대전화
var user_tell = document.getElementsByClassName('input')[6];




/*
//아이디 중복확인 확인을 위한 변수
var idchk=false;
//아이디 중복확인후 변경할 경우를 위한 확인용 변수
var userid1;
var userid2;
//아이디 중복확인
function check_id(){
    var user_id = document.getElementById('id').value;
    //정규표현식
    var idReg = /^[a-z]+[a-z0-9]{4,19}$/g;

    if(user_id==''){
        alert('아이디를 입력해주세요.');
    }else if( !idReg.test( $("input[name=id]").val() ) ) {
        alert("아이디는 영문, 숫자 조합 5자 이상으로 첫자는 영문이어야 하며, 한글은 입력하실 수 없습니다.");
        return;
    }else{
        alert('사용가능한 아이디입니다.')
        idchk=true;
        userid1=user_id;
    }
}
*/

//아이디 중복확인 확인을 위한 변수
var idchk=false;

//아이디 중복 확인
function fn_overlapped(){
    var _id=$("#id").val();
    //정규표현식
    var idReg = /^[a-z]+[a-z0-9]{4,19}$/g;

    if(_id==''){
        alert('아이디를 입력해주세요.');
        return;
    }else if( !idReg.test(_id) ) {
        alert("아이디는 영문, 숫자 조합 5자 이상으로 첫자는 영문이어야 하며, 한글은 입력하실 수 없습니다.");
        return;
    }
    
    $.ajax({
       type:"post",
       async:false,  
       url:"overlapped.do",
       dataType:"text",
       data: {id:_id},
       success:function (data,textStatus){
          if(data=='false'){
       	    alert("사용할 수 있는 ID입니다.");
       	    $('#btnOverlapped').prop("disabled", true);
       	    $('#id').prop("readonly", true);
       	    $('#id').val(_id);
       	    idchk=true;
          }else{
        	  alert("사용할 수 없는 ID입니다.");
          }
       },
       error:function(data,textStatus){
          alert("에러가 발생했습니다.");ㅣ
       },
       complete:function(data,textStatus){
          //alert("작업을완료 했습니다");
       }
    });  //end ajax	 
}

// 휴대폰 인증번호 영역
    
// 인증번호 받기
// 전역변수 선언하여 휴대폰 번호를 정상적으로 입력하였을 경우 true값을 줘서, 인증번호 받기 버튼 누르면 타이머 시작하기
var timeChk = false;
var certifyNum = false;
function call(){ // 인증번호 받기 버튼
    var callNum = document.getElementsByName('phone')[0].value; // 휴대폰번호 입력받은 값
    var callCertify = document.getElementById('cNum').value;
    random = Math.floor(Math.random() * 1000000) + 1; //랜덤 함수를 사용하여 랜덤한 6자리 숫자 만들기

    if(callNum.length==10||callNum.length==11){ //정상입력
        alert('인증번호가 전송되었습니다. 3분내로 입력해주세요.');
        console.log(random);
        document.getElementById('btnCertify').disabled=false; //휴대폰 인증번호 시간내에 미입력시 비활성화 된것을, 인증번호 받기 재클릭시 인증번호 확인버튼 활성화
        timeChk=true;
    }else{
        alert('전화번호를(-)제외 10~11자리를 입력해주세요.');
        timeChk=false;
    }

    //인증번호 받기 누르면 타이머 시작하기
    var time = 180; //기준시간 작성
    var min = ''; //분
    var sec = ''; //초

    //setInterval(함수, 시간) : 주기적인 실행
    timer = setInterval(function() {
        //parseInt() : 정수를 반환
        min = parseInt(time/60); //몫을 계산
        sec = time%60; //나머지를 계산
        time--;

        if(timeChk==true){//정상적인 휴대폰 번호를 입력 받았을 경우(10~11자리) 타이머 실행
            document.getElementById('timeZone').innerHTML = '남은시간은 ' + min + '분' + sec + '초 입니다.'; //innerHTML을 사용해서 div에 타이머 표시
            document.getElementById('btnPhone').disabled=true; //인증번호 받을경우 버튼 비활성화
            //인증번호 정상 생성할 경우 버튼 색 변경
			$(".phone_btn").css({"background":"#dddddd","color":"#777777"});
			$('#phone').prop("readonly", true); //정상일 경우 휴대폰 번호 입력창 readonly
        }
        if(time < 0) { //타이머 시작후
            clearInterval(timer); //setInterval() 실행을 끝냄
            alert('인증 시간이 초과되었습니다.');
            //인증시간 지났을 경우 다시 활성화
            document.getElementById('btnPhone').disabled=false;
            //인증시간 지나면 인증번호받기 버튼 색 원래대로
            $(".phone_btn").css({"background":"#000","color":"#fff"});
            $('#phone').prop("readonly", false); //시간초과 경우 휴대폰 번호 입력창 readonly 해제
        }
        if(timeChk==false){ //인증번호 받기 버튼 안눌렀을 경우 false로 타이머 시작 안함.
            clearInterval(timer); //setInterval() 실행을 끝냄
        }
    }, 1000);

}

//인증번호 확인 버튼
function btnCerti(){
    var callCertify = document.getElementById('cNum').value;
    if(callCertify==''){
        alert('인증번호를 입력해주세요.');
        console.log(random);
    }else if(callCertify != random){
        alert("인증번호를 다시 입력해주세요.");
    }else if(callCertify == random){
        clearInterval(timer);
        certifyNum = true;
        document.getElementById('btnCertify').disabled=true;
        $("#btnCertify").css({"background":"#dddddd","color":"#777777"});
        //휴대전화 인증 완료할 경우 인증번호 확인버튼 비활성화
        document.getElementById('btnCertify').disabled=true;
        $('#cNum').prop("readonly", true); //정상일 경우 인증 번호 입력창 readonly
        alert("인증되었습니다.");
    }
}

function joinBtn(){

    //아이디
    var user_id = document.getElementsByClassName('input')[0].value;
    //이름
    var user_name = document.getElementsByClassName('input')[1].value;
    //비밀번호
    var user_pwd0 = document.getElementsByClassName('input')[2].value;
    //비밀번호 확인
    var user_pwd1 = document.getElementsByClassName('input')[3].value;
    //이메일 아이디
    var user_email = document.getElementsByClassName('input')[4];
    //이메일 도메인
    var user_domain = document.getElementsByClassName('input')[5];
    //아이디 중복확인 체크
    userid2=user_id;

    if(user_pwd0!=user_pwd1){
        alert('비밀번호와 비밀번호확인이 일치하지 않습니다.');
        event.preventDefault()
        document.getElementsByClassName('input')[3].focus();
        return '#';
    }else if(user_id=='' || user_name=='' || user_pwd0=='' || user_pwd1==''){
        alert('필수 입력사항 미입력');
        event.preventDefault();
        return '#';
    }else if(certifyNum==false){
        alert('휴대전화 인증이 완료되지 않았습니다.');
        document.getElementsByClassName('input')[7].focus();
        event.preventDefault();
        return '#';
    }else if(idchk==false){
        alert("아이디 중복 확인을 하지 않으셨습니다.\n아이디 중복 확인 후 회원가입이 가능합니다.");
        document.getElementsByClassName('input')[0].focus();
        event.preventDefault();
        return '#';
    }else{
        alert(user_name+'님 회원 가입을 축하합니다.');
        /*var theForm = document.join_form; //form의 name으로 변수 선언
        theForm.method = 'post';
        theForm.action = 'addMember.com';*/
    }
}


/* 주소찾기는 다음 우편번호 서비스 사용 */
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddress").focus();
        }
    }).open();
}