$(function(){
	var cat_id =$("input[name=cat_id]").val();
	//加入购物车
   $("#addBtn").click(function(){
   	   var color = $(".detail-con-ys-change .detail-con-yanse").attr("title");

   	   if(cat_id ==1 || cat_id ==2){
   	   	 var nc    = $(".detail-con-change .detail-con-mon").html();
   	   	  //alert(_nc);
           if(nc ==undefined){
           	  alert("请选择内存");
           	  return false;
           }
   	   }
       var price = $(".price .newer").html();
       var id    = $("input[name=id]").val();
       var num   = $("input[name=num]").val();
       $.ajax({
          url: _url+"/cart",
          data:{'id':id,'num':num,'nc':nc,'color':color,"price":price},
          type:"post",
          success:function(d){
          	if(d ==1){
          		window.location.href=_APP+"/Buy/cart";
          	}
          }
       });
   })
    
   //立即购买
   $("#buy_now").click(function(){
       if(_user ==""){
        alert("请先登录");
        return false;
       }
       var color = $(".detail-con-ys-change .detail-con-yanse").attr("title");

       if(cat_id ==1 || cat_id ==2){
         var nc    = $(".detail-con-change .detail-con-mon").html();
          //alert(_nc);
           if(nc ==undefined){
              alert("请选择内存");
              return false;
           }
       }
       var price = $(".price .newer").html();
       var id    = $("input[name=id]").val();
       var num   = $("input[name=num]").val();
       $.ajax({
          url: _url+"/buy_now",
          data:{'id':id,'num':num,'nc':nc,'color':color,"price":price},
          type:"post",
          success:function(d){
            if(d ==1){
              window.location.href=_APP+"/Buy/collect";
            }
          }
       });
   })



})
