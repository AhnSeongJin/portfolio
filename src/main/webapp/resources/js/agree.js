function nextPage(){
    var agreeChk0 = document.getElementsByClassName("agreeChk")[0].checked;
    var agreeChk1 = document.getElementsByClassName("agreeChk")[1].checked;
    
    if(agreeChk0==false || agreeChk1==false){
        alert("동의 항목(필수)는 반드시 체크하셔야 다음 단계로 넘어갑니다.");
        return "#";
    }
    return "/arumjigi/member/joinForm.do";

}