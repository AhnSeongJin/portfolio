$(document).ready(function(){
    $('#more').click(function(){
        //more 클릭시 숨기고
        $(this).css({'display':'none'});
        //아래 숨은 영역은 보이기
        $('.hide').css({'display':'block'});
    });
    $('.allList>li').click(function(){
        alert('상품 준비중입니다.');
    });
});