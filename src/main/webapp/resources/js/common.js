$(document).ready(function(){
    $("#main_menu, #sitemap_active").bind({
        mouseenter : function(){
            $("#sitemap_active").css({display:"block"});
            
        },
        mouseleave : function(){
            $("#sitemap_active").css({display:"none"});
        }
    });

	$(document).on("click","#btn_sitemap",function(){
		if($("#sitemap_active").hasClass("slide_off")){
			$("#sitemap_active").addClass("slide_on");
			$("#sitemap_active").removeClass("slide_off");
			$("#sitemap_active").slideDown();
		}else{
			$("#sitemap_active").slideUp();
			$("#sitemap_active").addClass("slide_off");
			$("#sitemap_active").removeClass("slide_on");
		}

	});
});