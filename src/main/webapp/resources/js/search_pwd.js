function pwdFind(){

    //아이디
    var id = document.getElementById('id').value;
    var idFocus = document.getElementById('id');
    //이름
    var name = document.getElementById('name').value;
    var nameFocus = document.getElementById('name');
    //이메일
    var email = document.getElementById('email').value;
    var emailFocus = document.getElementById('email');
    
    //이메일, 도메인 나누기(DB에 맞춰)
    var email1 = email.substring(0,email.indexOf("@"));
    var domain = email.substring(email.indexOf("@")+1);
    console.log(email1+" "+domain);

    if(id==''){
        alert('아이디를 입력해주세요.')
        idFocus.focus();
        event.preventDefault();
        return '#';
    }else if(name==''){ //이름 미입력시
        alert('이름를 입력해주세요.')
        nameFocus.focus();
        event.preventDefault();
        return '#';
    }else if(email==''){ //이메일 미입력했을 경우
        alert('이메일을 입력해주세요.')
        emailFocus.focus();
        event.preventDefault();
        return '#';
    }
    
    $.ajax({
        type:"get",
        async:false,  
        url:"searchPwd.do",
        dataType:"text",
        data: {"id":id, "name":name, "email":email1, "domain":domain},
        success:function (data){
        	if(data!=null){
        		alert("회원님의 비밀번호는 "+data+" 입니다.");
        	}else{
        		alert("일치하는 회원정보가 없습니다.");
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