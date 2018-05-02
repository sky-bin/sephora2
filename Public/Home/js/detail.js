/**
 * Created by jing on 2015/1/1.
 */
$(function(){ 
     $(".detail-comm-li").click(function(){
           var _this=$(this);
           var sp=_this.find("span");

          if(!_this.hasClass("comm-color") ){
              $(".detail-comm-li").removeClass("comm-color");
              $(".detail-comm-li").find("span").css("color","");
              _this.addClass("comm-color");
              _this.css("cursor","default");
              sp.css("color","red");
          }
     });
     var _offset = 0;
     var scrollTop = 0;
      _offset=$(".detail-bottom-title").offset().top;
     $(document).scroll(function(){
     	var _this=$(".detail-bottom-title");
        scrollTop = $(document).scrollTop();
        if (scrollTop > _offset) {
           _this.addClass("tool-fixed");
            _this.css("width", "1170px");

        } else {
            _this.removeClass("tool-fixed");
           
        }
     })


})

function image(className) {     //所传的参数 是所有产生事件的元素的父元素的类名
    var obj = $(className);
    //delegate 委托事件，可以给所有的子元素委托事件
    //左箭头的点击事件
    obj.delegate(".detail-con-ljt", "click", function () {
        //查找当前显示的图片的对象
        var checkObject = obj.find(".detail-con-image-li.on");
        //获取所有的圆圈对象
        var dotObject = obj.find(".detail-con-dot");
        //获取当前显示的图片的索引
        var checkIndex = checkObject.index();
        //如果当前索引不等于0时
        if (checkIndex != 0) {
            //当前显示的图片变为隐藏，它的上一张图片显示
            checkObject.removeClass("on").prev().addClass("on");
            //清除所有的圆圈的选中状态，然后将与图片相对应的圆圈选中
            dotObject.removeClass("on").eq(checkIndex - 1).addClass("on");
        } else {
            //当前索引等于0时变为隐藏
            checkObject.removeClass("on");
            //将图片的最后一个变为显示
            obj.find(".detail-con-image-li").last().addClass("on");
            //清除所有的圆圈的选中状态，然后将最后一个圆圈选中
            dotObject.removeClass("on").last().addClass("on");
        }
    });
    obj.delegate(".detail-con-rjt", "click", function () {
        var checkObject = obj.find(".detail-con-image-li.on");
        //获取所有的图片的对象集合
        var checkLen = obj.find(".detail-con-image-li");
        var len = checkLen.length;
        //获取圆圈对象集合
        var dotObject = obj.find(".detail-con-dot");
        //获取当前显示的图片的索引
        var checkIndex = checkObject.index();
        if (checkIndex != (len - 1)) {
            checkObject.removeClass("on").next().addClass("on");
            dotObject.removeClass("on").eq(checkIndex + 1).addClass("on");
        } else {
            checkObject.removeClass("on");
            checkLen.first().addClass("on");
            dotObject.removeClass("on").first().addClass("on");
        }
    });
    obj.delegate(".detail-con-dot", "click", function () {
        var checkDot = obj.find(".detail-con-dot");
        var dot = $(this);
        if (!dot.hasClass("on")) {
            var checkImage = obj.find(".detail-con-image-li");
            var dotIndex = dot.index();
            checkDot.removeClass("on");
            dot.addClass("on");
            checkImage.removeClass("on").eq(dotIndex).addClass("on");
        }
    })

}
function goods(className, data) {
    var obj = $(className);
    //数量减
    obj.delegate(".detail-con-minus", "click", function (e) {
        e.stopPropagation();
        var inputs = $(this).next();
        var num = parseInt(inputs.val());
        if (num > 1) {
            inputs.val(num - 1);
        }
    });
    //数量加
    obj.delegate(".detail-con-add", "click", function (e) {
        e.stopPropagation();
        
        // //获取当前选中颜色的索引
        // var colorCheckIndex = obj.find('.detail-con-ys .detail-con-ys-change').index();
        // //获取当前选中版本的索引
        // var capacityIndex = obj.find('.detail-con-vsion.detail-con-change').parent().index();
        // //获取当前选中版本的值
        // var capacityData = data.price[colorCheckIndex][capacityIndex];
        // var maxNumber = parseInt(capacityData.number);
        // var inputs = $(this).prev();
        // var num = parseInt(inputs.val());
        // if (num < maxNumber) {
        //     inputs.val(num + 1);
        // }
        var inputs = $(this).prev();
        var num = parseInt(inputs.val());  
         inputs.val(num + 1);
        
    });

    //设置轮播图片的HTML结构，并赋值
    function setImages(imageObject) {
        var imageHtml = "";
        var dotHtml = "";
        if (imageObject != undefined && imageObject != null && imageObject.length > 0) {
            $.each(imageObject, function (index, ele) {
                if (index == 0) {
                    imageHtml += '<li class="detail-con-image-li on"><img src="' + ele + '"></li>';
                    dotHtml += '<li class="detail-con-dot display-inline-block on"></li>';
                } else {
                    imageHtml += '<li class="detail-con-image-li"><img src="' + ele + '"></li>';
                    dotHtml += '<li class="detail-con-dot display-inline-block"></li>';
                }
            });
        }
        obj.find('.detail-con-image ul').html(imageHtml);
        obj.find('.detail-con-circle ul').html(dotHtml);
    }

    //设置与当前颜色相对应的版本价格
    function setPrice(priceObject) {
        var priceHtml = "";
        var checkPrice = "";
        var number = 0;
        if (priceObject != undefined && priceObject != null && priceObject.length > 0) {
            $.each(priceObject, function (index, ele) {
                if (index == 0) {
                    checkPrice = ele.prop_value;
                    //number = parseInt(ele.number);
                    priceHtml += '<li class="display-inline-block "><div class="detail-con-vsion detail-con-change"><div class="detail-con-mon">' + ele.prop_name + '</div><div class="detail-con-money">' + ele.prop_value + '</div></div></li>';
                } else {
                    priceHtml += '<li class="display-inline-block "><div class="detail-con-vsion"><div class="detail-con-mon">' + ele.prop_name + '</div><div class="detail-con-money">' + ele.prop_value + '</div></div></li>';
                }
            });
        }
        obj.find('.detail-con-price .newer').html(checkPrice);
        obj.find('.detail-con-bab .detail-con-banben ul').html(priceHtml);

        // //数量大于0时，隐藏缺货按钮，显示立即购买加入购物车按钮
        // if (number > 0) {
        //     //显示立即购买按钮
        //     obj.find('.bug_btn').css({"display": 'inline-block'});
        //     //显示加入购物车按钮
        //     obj.find('.add_btn').css({"display": 'inline-block'});
        //     //隐藏缺货按钮
        //     obj.find('.less_btn').css({"display": 'none'});
        //     //数量为0时，显示缺货按钮，隐藏立即购买加入购物车按钮
        // } else {
        //     //显示缺货按钮
        //     obj.find('.less_btn').css({"display": 'inline-block'});
        //     //隐藏立即购买按钮
        //     obj.find('.bug_btn').css({"display": 'none'});
        //     //隐藏加入购物车按钮
        //     obj.find('.add_btn').css({"display": 'none'});
        // }
    }

    //切换颜色
    obj.delegate(".detail-con-ys-li", "click", function (e) {
        e.stopPropagation();
        var _this = $(this);
        if (!_this.hasClass("detail-con-ys-change")) {
            obj.find(".detail-con-ys-li").removeClass("detail-con-ys-change");
            $(this).addClass("detail-con-ys-change");
            var _thisIndex = _this.index();
            if($.inArray(data.cat_id,["3","4"])==-1){ 
            
                var _thisPrice = data.price;
                 setPrice(_thisPrice);
            }
            //获取颜色对应的轮播图片数组
            var _thisImages = data.images[_thisIndex];
            setImages(_thisImages);
        }
    });

    //点击版本之后更改价格及处理添加购物车按钮事件
    function setPriceNumber(_thisData) {
        //定义价格
        var checkPrice = _thisData.prop_value;
        //更改价格显示
        obj.find('.detail-con-price .newer').html(checkPrice);
        //获取当前版本物品剩余数量
        // var number = parseInt(_thisData.number);
        // //数量大于0时，隐藏缺货按钮，显示立即购买加入购物车按钮
        // if (number > 0) {
        //     //显示立即购买按钮
        //     obj.find('.bug_btn').css({"display": 'inline-block'});
        //     //显示加入购物车按钮
        //     obj.find('.add_btn').css({"display": 'inline-block'});
        //     //隐藏缺货按钮
        //     obj.find('.less_btn').css({"display": 'none'});
        //     //数量为0时，显示缺货按钮，隐藏立即购买加入购物车按钮
        // } else {
        //     //显示缺货按钮
        //     obj.find('.less_btn').css({"display": 'inline-block'});
        //     //隐藏立即购买按钮
        //     obj.find('.bug_btn').css({"display": 'none'});
        //     //隐藏加入购物车按钮
        //     obj.find('.add_btn').css({"display": 'none'});
        // }
    }

    //切换版本
    obj.delegate(".detail-con-vsion", "click", function (e) {
        e.stopPropagation();
        var _this = $(this);
        if (!_this.hasClass("detail-con-change")) {
            //获取当前选中版本的索引
            var _thisIndex = _this.parent().index();
            //获取当前选中颜色的索引
            var colorCheckIndex = obj.find('.detail-con-ys .detail-con-ys-change').index();
            //获取当前选中颜色及版本对应的数据
            var _thisData = data.price[_thisIndex];
            //调用价格更改及购物车按钮处理方法
            setPriceNumber(_thisData);
            obj.find(".detail-con-vsion").removeClass("detail-con-change");
            _this.addClass("detail-con-change");
        }
    });
}
function bott() {
    $(".detail-bott-bt li").click(function () {
        var _this = $(this);
        if (!_this.hasClass("active")) {
            _this.siblings().removeClass("active");
            _this.addClass("active");
            $(".detail-bott-js").children("li").removeClass("on").eq(_this.index()).addClass("on");
        }
    });
}

function autoScrollBar(barArea) {
    var obj = $(barArea);
    obj.delegate(".detail-cs-left-ul li", "click", function () {
        var _this = $(this);
        var _thisIndex = _this.index();
        if (!_this.hasClass("current")) {
            //_this.siblings().removeClass("current");
            //_this.addClass("current");
            var positionTop = obj.children(".detail-cs-right").children('.info-i:eq(' + _thisIndex + ')').offset().top;
            console.log(positionTop)
            //$(document).scrollTop(positionTop);
            $('html,body').animate({
                "scrollTop": positionTop + "px"
            }, 500);
            //$('html,body').animate({scrollTop: '0px'}, 800);
        }
    });

    var infoArray = obj.find('.info-i');
    var leftObject = obj.find(".detail-cs-left-ul li");

    $(document).scroll(function (e) {
        if (!obj.hasClass("on")) {
            return false;
        }
        var objTop = obj.offset().top;
        var scrollTop = $(document).scrollTop();
        if (scrollTop > objTop) {
            obj.children('.left-side').css({"position": "fixed", "top": 0});
        } else {
            obj.children('.left-side').css({"position": "", "top": ""});
        }
        var infoArrayTop = [];
        $.each(infoArray, function (index, ele) {
            var eleObject = $(ele);
            var top = eleObject.offset().top;
            var thisHeight = eleObject.outerHeight(true);
            infoArrayTop.push({
                "minTop": top,
                "maxTop": thisHeight + top
            })
        });
        $.each(infoArrayTop, function (index, ele) {
            if (scrollTop >= ele.minTop && ele.maxTop > scrollTop) {
                leftObject.removeClass("current").eq(index).addClass("current");
                return false;
            }
        })
    });
}
