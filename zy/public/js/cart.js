$(function(){
  var uname=document.cookie.split("=")[1];
  $.ajax({
    url:"http://127.0.0.1:3000/cart",
    type:"post",
    data:{uname},
    dataType:"json",
    success(result){
      var html="";
      var countAll=0;
      var All=0;
      console.log(result);
      for(var l of result){
        html+=`
        <div class="content-designer">
          <input type="checkbox" class="designer" checked><a href="" class="mylightblue">设计师品牌：${l.designer}</a>
        </div>
        <div class="content-inner">
          <div class="inner-info">
            <input type="checkbox" class="sel" checked>
            <div class="small-pic">
              <img src="img/details/201901171601509637.jpg
              " alt="">
            </div>
            <div class="product-details">
              <a class="details-title mylightblue" href="http://127.0.0.1:3000/details.html?pid=${l.pid}">
                ${l.title}
              </a>
              <p class="color-size mygray">
                颜色：${l.color}  规格或尺码：${l.size}
              </p>
            </div> 
            <div class="inner-price">
              ¥${l.price.toFixed(2)}
            </div> 
            <div class="inner-count">
              <button class="btn-count">-</button>
              <input type="text" value="${l.count}" class="count-text">
              <button class="btn-count">+</button>
            </div>
            <div class="inner-smSum">
              <p>¥ <span id="smSum">${(l.price*l.count).toFixed(2)}</span></p>
              <p id="discount"> 优惠  ${(l.count*(l.priceOld-l.price)).toFixed(2)} 元 </p>
            </div>
            <a href="" class="mylightblue" id="delete">删除</a>
          </div>
        </div>`
        countAll+=parseInt(l.count);
        All+=l.price*l.count
      }
      $(".card-content").html(html)
      var countName=$(".card-content").children().length/2;
      var html="";
      html=`<button id="delAll">清空购物车</button>
      <div class="sum">
        <span>已选商品 <span class="red" id="countName">${countName}</span>款/共 <span class="red" id="countAll">${countAll} </span>件  商品总价:￥ <span class="red" id="All">${All.toFixed(2)}</span></span>
        <button id="sumAll">立即结算</button>
      </div>`
      $(".card-bottom").html(html);
        //数量加减
/*   var $btnCount=$(".btn-count");
  var $count=parseInt($(".count-text").val());
    $btnCount.click(function(){
    if($count>=$(".stock").html()){
      alert("库存数量不足");
    }else if($(this).html()=="+"){
      $count++;
      $(".count-text").val($count);
    }else if($count>1){
      $count--;
      $(".count-text").val($count);
    };
  }) */
    $(".designer").click(function(){
      if($(this).is(":checked")){
        $(this).parent().next().find(".sel").prop("checked",true);
        $("#countName").html(parseInt($("#countName").html())+1);
        $("#countAll").html(parseInt($("#countAll").html())+1);
        $("#All").html((parseInt($("#All").html())+parseInt($("#smSum").html())).toFixed(2))
        if(!$(".card-content").children("input[type='checkbox']").is(":not(:checked)")){ 
          $("#selAll").prop("checked",true)
        }
      }
      else{
        $(this).parent().next().find(".sel").prop("checked",false);
        $("#countName").html($("#countName").html()-1);
        $("#countAll").html(parseInt($("#countAll").html())-1)
        $("#All").html((parseInt($("#All").html())-parseInt($("#smSum").html())).toFixed(2))
        $("#selAll").prop("checked",false);
    }
    })
    $(".sel").click(function(){
      if($(this).is(":checked")){
      $(this).parent().parent().prev().find(".designer").prop("checked",true);
      $("#countName").html(parseInt($("#countName").html())+1);
      $("#countAll").html(parseInt($("#countAll").html())+1);
      $("#All").html((parseInt($("#All").html())+parseInt($("#smSum").html())).toFixed(2));
      if(!$(".card-content").children("input[type='checkbox']").is(":not(:checked)")){
        $("#selAll").prop("checked",true)
      }
    }
      else{
        $(this).parent().parent().prev().find(".designer").prop("checked",false);
        $("#countName").html($("#countName").html()-1);
        $("#countAll").html(parseInt($("#countAll").html())-1);
        $("#All").html((parseInt($("#All").html())-parseInt($("#smSum").html())).toFixed(2));
        $("#selAll").prop("checked",false)
      }
    });
    $("#selAll").click(function(){
      if($(this).is(":checked")){
        $("input[type='checkbox']").prop("checked",true);
        location.reload();
      }else{
        $("input[type='checkbox']").prop("checked",false);
        $("#countName").html("0");
        $("#countAll").html("0");
        $("#All").html("0");
      }
    })
    }
  })
})