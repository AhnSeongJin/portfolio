//임시 확인용 아이디 scott, 비밀번호 tiger
var pwdChk=0;
function login(){

    var id = document.getElementById('id').value;
    var idFocus = document.getElementById('id');
    var pwd = document.getElementById('pwd').value;
    var pwdFocus = document.getElementById('pwd');

    if(id==''){ //아이디 미입력시
        alert('아이디를 입력해주세요.')
        idFocus.focus();
        event.preventDefault();
        return '#';
    }else if(id!=='' && pwd==''){ //아이디만 입력했을 경우
        alert('비밀번호를 입력해주세요.')
        pwdFocus.focus();
        event.preventDefault();
        return '#';
    }
//    else{
//    	return '/member/login.do';
//    }
//    else if(id!=='scott'){// 아이디가 scott이 아닐 경우
//        alert('입력한 아이디가 존재하지 않습니다. 아이디를 다시 한번 입력해 주세요.')
//        idFocus.focus();
//        event.preventDefault();
//        return '#';
//    }else if(id=='scott' && pwd==''){ //비밀번호 미입력시
//        alert('비밀번호를 입력해주세요.')
//        pwdFocus.focus();
//        event.preventDefault();
//        return '#';
//    }

//    if(id=='scott' && pwd!=='' && pwd!=='tiger'){ //비밀번호 입력시 tiger가 아닐경우
//        pwdChk++ // 'scott' 비밀번호 오류시 횟수 증가
//        if(pwdChk<5){ // 비밀번호 오류 4회까지
//            alert('비밀번호가 '+pwdChk+'회 틀렸습니다.\n5회 틀리면 로그인 진행할 수 없습니다.');
//            pwdFocus.focus();
//            event.preventDefault();
//            return '#';
//        }
//        if(pwdChk==5) //비밀번호 오류 5회때
//            alert('비밀번호가 '+pwdChk+'회 틀렸습니다.\n관리자에게 문의하세요');
//        if(pwdChk>5) //비밀번호 오류 5회 이상으로 로그인 진행 불가
//            alert('비밀번호가 5회 이상 틀려서 로그인 진행이 불가능 합니다.\n관리자에게 문의하세요');
//            //console.log(pwdChk); //pwdChk값 확인
//    }else if(pwdChk<5){ //비밀번호 오류가 5회 미만일 때만 로그인 가능
//        if(id=='scott' && pwd=='tiger'){
//        alert(id+'님께서 로그인하셨습니다.');
//        pwdChk=0;
//        }
//    }
}