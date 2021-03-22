function idFind(){
    var name = document.getElementById('name').value;
    var nameFocus = document.getElementById('name');
    var email = document.getElementById('email').value;
    var emailFocus = document.getElementById('email');
    var contextPath = getContextPath();
    
    //이메일, 도메인 나누기(DB에 맞춰)
    var email1 = email.substring(0,email.indexOf("@"));
    var domain = email.substring(email.indexOf("@")+1);
    console.log(email1+" "+domain);
    
    if(name==''){ //이름 미입력시
        alert('이름를 입력해주세요.');
        console.log(contextPath);
        nameFocus.focus();
        event.preventDefault();
        return false;
    }else if(name!=='' && email==''){ //이름만 입력했을 경우
        alert('이메일을 입력해주세요.');
        emailFocus.focus();
        event.preventDefault();
        return '#';
    }
    
    $.ajax({
        type:"get",
        async:false,  
        url:"searchId.do",
        dataType:"text",
        data: {"name":name, "email":email1, "domain":domain},
        success:function (data){
        	if(data!=null){
        		alert("회원님의 아이디는 "+data+" 입니다.");
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

function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}