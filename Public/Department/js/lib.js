window.onload=window.onresize=function (){
	//获取当前窗口的高度
	var window_H=document.body.clientHeight;

	//#bd1背景图片的宽高比
	var pic_kgb=6478/1080;
	//#bd1当前屏幕背景图宽度
	var now_pic_k=pic_kgb*window_H;
    //#bd1设置背景图的宽度
    var bg1=document.querySelector("#bd1");
    bg1.style.width=now_pic_k-1+'px';

    //设置div1的左边距和宽度
    var div1=document.querySelector("#div1");
    div1.style.left=2817/1080*window_H+'px';
    div1.style.width=1609/1080*window_H+'px';
    //设置div2的左边距和宽度
    var div2=document.querySelector("#div2");
    div2.style.left=4493/1080*window_H+'px';
    //设置div3的左边距和宽度
    var div3=document.querySelector("#div3");
    div3.style.left=5507/1080*window_H+'px';
    var div4=document.querySelector("#div4");
    div4.style.left=3186/1080*window_H+'px';

	//#bd2背景图片的宽高比
	var pic_kgb2=2898/1080;
	//#bd2当前屏幕背景图宽度
	var now_pic_k2=pic_kgb2*window_H;
    //#bd2设置背景图的宽度
    var bg2=document.querySelector("#bd2");
    bg2.style.width=now_pic_k2+'px';

	//背景图片的宽高比
	var pic_kgb3=2539/1080;
	// 当前屏幕背景图宽度
	var now_pic_k3=pic_kgb3*window_H;
    //设置背景图的宽度
    var bg3=document.querySelector("#bd3");
    bg3.style.width=now_pic_k3-1+'px';

    //#bd4背景图片的宽高比
    var pic_kgb4=8646/1080;
    //#bd4当前屏幕背景图宽度
    var now_pic_k4=pic_kgb4*window_H;
    //#bd4设置背景图的宽度
    var bg4=document.querySelector("#bd4");
    bg4.style.width=now_pic_k4+'px';

    //#bd5背景图片的宽高比
    var pic_kgb5=1025/1080;
    //#bd5当前屏幕背景图宽度
    var now_pic_k5=pic_kgb5*window_H;
    //#bd5设置背景图的宽度
    var bg5=document.querySelector("#bd5");
    bg5.style.width=now_pic_k5+'px';

    // 原始html的字体大小
	var html_size=100;
	// 原始比例
	var html_size_b=6478/50;
	// 现在html字体的大小
	var now_html_size=now_pic_k2;
    document.documentElement.style.fontSize=now_html_size/50+'px';

    //云向右
    var r=document.querySelectorAll(".cloudR");
    for(var i=0;i<r.length;i++){
    	r[i].className+=" "+"cloudRight";
    }
    //云向右1
    var r1=document.querySelectorAll(".cloudR1");
    for(var i=0;i<r1.length;i++){
    	r1[i].className+=" "+"cloudRight1";
    }
    //云向右2
    var r2=document.querySelectorAll(".cloudR2");
    for(var i=0;i<r2.length;i++){
    	r2[i].className+=" "+"cloudRight2";
    }
    //云向左
    var l=document.querySelectorAll(".cloudL");
    for(var i=0;i<l.length;i++){
    	l[i].className+=" "+"cloudLeft";
    }

    $("#btn1").click(function(){
        $("#bd2").show();
        //$("#bd1").slideLeftHide(1000);
        //$("#bd2").slideLeftShow(1000);
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+'px';
        $(document).scrollLeft(now_pic_k-1);
    });
    $("#btn2").click(function(){
        $("#bd3").show();
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+now_pic_k3-1+'px';
        $(document).scrollLeft(now_pic_k-1+now_pic_k2);
    });
    $("#btn3").click(function(){
        $("#bd4").show();
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+now_pic_k3-1+now_pic_k4+'px';
        $(document).scrollLeft(now_pic_k-1+now_pic_k2+now_pic_k3-1);
    });
    $("#btn4").click(function(){
        $("#bd5").show();
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+now_pic_k3-1+now_pic_k4+now_pic_k5+'px';
        $(document).scrollLeft(now_pic_k-1+now_pic_k2+now_pic_k3-1+now_pic_k4);
    });

    if($('#bd2').css("display") == "block"){
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+'px';
    }
    if($('#bd3').css("display") == "block"){
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+now_pic_k3-1+'px';
    }
    if($('#bd4').css("display") == "block"){
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+now_pic_k3-1+now_pic_k4+'px';
    }
    if($('#bd5').css("display") == "block"){
        document.querySelector("body").style.width=now_pic_k-1+now_pic_k2+now_pic_k3-1+now_pic_k4+now_pic_k5+'px';
    }


    $(".div1_1_cl").click(function(){
        $(".div1_1").hide();
        $(".div1_2").show();
    });
    $(".div1_2_cl").click(function(){
        $(".div1_2").hide();
        $(".div1_3").show();
    });
    $(".div1_3_cl").click(function(){
        $(".div1_3").hide();
        $(".div1_4").show();
    });
    $(".div1_4_cl").click(function(){
        $(".div1_4").hide();
        $(".div1_5").show();
    });

    $(document).scroll(function(){
        //alert($(document).scrollLeft()+"px");
        if( $(document).scrollLeft() >= 750 ){
            $('.img12').show();
            $('.img48').show();
        }
        if( $(document).scrollLeft() >= 800 ){
            $('.img11').show();
        }
        if( $(document).scrollLeft() >= 900 ){
            $('.img15').show();
            $('.img49').show();
            $('.img50').show();
        }
        if( $(document).scrollLeft() >= 120 && $('#bd4').css("display") == "block" ){
            $('.img53').show();
            $('.img39').show();
            $('.img40').show();
        }
        if( $(document).scrollLeft() >= 400 && $('#bd4').css("display") == "block" ){
            $('.img41').show();
            $('.img42').show();
            $('.img54').show();
        }
        if( $(document).scrollLeft() >= 500 && $('#bd4').css("display") == "block" ){
            $('.img43').show();
            $('.img44').show();
        }
        if( $(document).scrollLeft() >= 1000 && $('#bd4').css("display") == "block" ){
            $('.img45').show();
            $('.img55').show();
            $('.img56').show();
        }

    });

};

$(document).ready(function(){



});

jQuery.fn.slideLeftHide = function( speed, callback ) {
    this.animate({
        width : "hide",
        paddingLeft : "hide",
        paddingRight : "hide",
        marginLeft : "hide",
        marginRight : "hide"
    }, speed, callback );
};
jQuery.fn.slideLeftShow = function( speed, callback ) {
    this.animate({
        width : "show",
        paddingLeft : "show",
        paddingRight : "show",
        marginLeft : "show",
        marginRight : "show"
    }, speed, callback );
};






