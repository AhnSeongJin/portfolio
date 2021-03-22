$(document).ready(function(){

    //도메인 선택시 입력란에 값 넣기
    $('#select').change(function(){
        var domain = $('#select').val();
        $('#email_domain').val(domain);
        //미선택시 입력란도 공백
        if(domain == ''){
            $('#email_domain').val('');
        }
    });

	
	$('.question').click(function(){
        //테이블에 토글이 잘 안되서 div에 슬라이드 토글
        //자주묻는 질문 클릭시 답변 열기
		$(this).parent().next('.answer').children().find('.boxAnswer').slideToggle();
		//클레스 명 호출해서 해당이 아닌것을 찾은 후 움직일 DIV 선언, 열려있는 것 닫기
		$('.question').not(this).parent().next('.answer').children().find('.boxAnswer').slideUp();
    });
    
    $('.btnQna').click(function(){
        alert('문의 내용이 등록되었습니다.');
    });

});

