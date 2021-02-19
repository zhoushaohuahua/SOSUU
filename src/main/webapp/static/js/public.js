$(function(){
	$(".kefu_btn").attr({"href":"###","target":"_blank"});
	$(".goTop").click(function(){
		$("html,body").animate({scrollTop:0},500);
	})
	$(window).scroll(function(){
		if($(window).scrollTop()>300){
			$(".goTop").show();
		}else{
			$(".goTop").hide();
		}
	})
//验证微信号
	var V_box=false;
	$(".yanVX .click_this").click(function(){
		if(!V_box){
			$(".yanVX").addClass("click_V");
			$(this).next(".yanVX_box").show();
			V_box=true;
		}else{
			$(".yanVX").removeClass("click_V");
			$(this).next(".yanVX_box").hide();
			V_box=false;
		}
		$(".yanVX").find('input').val("");
		var Ospan = $(".yanVX").find('span');
		if(Ospan.hasClass("noV")){
			$(Ospan).text("填写微信号");
		}else{
			$(Ospan).removeClass("yesV").addClass('noV').text("填写微信号");
		}
	})

	$(document).bind("click",function(e){
		var target = $(e.target);
		if(target.closest(".yanVX .click_this,.yanVX .yanVX_box").length == 0){
			$(".yanVX").removeClass("click_V");
			$(".yanVX .click_this").next(".yanVX_box").hide();
			V_box=false;
		};
	})
	$('.yanVX_box').on('click','button',function(){
		 var v = $("#text").val();
            $.ajax({
                type:"GET",
                url:'./weixin.php',
                data:{'v':v},
                success: function(data){
                    $(".noV").html(data);               
                    },
                error:function(data){
                    alert(data)
                    }
                })
            })

})


/**
 * ajax post 提交
 * @param url
 * @param data
 * @param callBack
 */
function sendJsonAjax(url,data,callBack){
	$.post(url,data,callBack,'json');
}



function updateCodeCallBack(data){}
/**
 * 刷新页面
 */
function refresh(){window.location.reload();}
/**
 * 微信验证
 * @param data
 */
function wechatAuthCallBack(data){
	var obj = $(".yanVX_box").find('span');
	if(data.status){
		if(obj.hasClass("noV")){
			obj.addClass("yesV").removeClass("noV").text("是官方微信号");
		}else if(obj.hasClass("yesV")){
			obj.text("是官方微信号");
		}
	
	}else{
		if(obj.hasClass("noV")){
			obj.text("不是官方微信号");
		}else if(obj.hasClass("yesV")){
			obj.addClass("noV").removeClass("yesV").text("不是官方微信号");
		}
	}
}

