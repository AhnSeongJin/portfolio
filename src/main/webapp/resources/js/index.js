$(document).ready(function(){
	var swiper = new Swiper('.main-banner', {
		loop: true,
		autoplay: {
			delay: 3000,
		},
		navigation : {
			nextEl : '.mainBtnNext', 
			prevEl : '.mainBtnPrev', 
		},

		autoplayDisableOnInteraction: false,
		noSwiping: true,
		noSwipingClass: 'no-swiping'
	});

	new Swiper('.bottom_slide', {
		pagination : { // 페이징 설정
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
	});
	
	var swiper = new Swiper('.frame', {
		navigation: {
		  nextEl: '#right',
		  prevEl: '#left',
		},
		autoplayDisableOnInteraction: false,
		noSwiping: true,
		noSwipingClass: 'no-swiping'
	  });

});
