$(function(){
  var pid=location.search.split("=")[1];
  $.ajax({
    url:"http://localhost:3000/details",
    type:"get",
    data:{pid},
    dataType:"json",
    success:function(result){
      var details=result[0];
      var designer=details.designer;
      var title=details.title;
      $("#designer").html(details);
      $(".title").html(title);
      var price=details.price;
      var priceOld=details.priceOld;
      $(".price-left").html(price.toFixed(2));
      $(".price-middle").html(priceOld.toFixed(2));
      $(".price-right").html(details.model);
      var colors=details.colors.split(",");
      var sizes=details.sizes.split(",");
      //颜色
      var html="";
      for(var color of colors){
        html+=`<button class="btn">${color}</button>`;
        $(".btns-color").html(html);
      }
      //尺寸
      var html="";
      for(var size of sizes){
        html+=`<button class="btn">${size}</button>`;
        $(".btns-size").html(html);
      }
      //小图
      var sm=[]
      for(var key in result){
        sm.push(result[key].pic)
      }
      var html=""
      for(var s of sm){
        html+=`<div class="details-small"><img src="${s}" alt=""></div>`
      }
      $(".details-small_wrap").html(html);
        //小图对应中图
      var $small=$(".details-small");
      var $big=$(".details-big");
      var $large=$("#details-large")
      var $smask=$("#super-mask")
      var imgWidth=$(".details-big img").css("width");
      var imgHeight=$(".details-big img").css("height");
      $smask.css({"width":imgWidth,"height":imgHeight});
      $large.css("background",`url(${$small.children(0).prop("src")}) no-repeat`)
      $small.first().addClass("selected")
      $small.mouseenter(function(){
        var xwidth="";
        var xheight="";
        $(this).siblings().removeClass("selected");
        $(this).addClass("selected");
        $big.children().prop("src",$(this).children().prop("src"));
        var imgWidth=$(".details-big img").css("width");
        var imgHeight=$(".details-big img").css("height");
        $large.css("background",`url(${$(this).children().prop("src")}) no-repeat`)
        $smask.css({"width":imgWidth,"height":imgHeight});
        if(parseInt(imgHeight)<300){$("#mask").css("height",imgHeight)}
        else{$("#mask").css({"width":550/xwidth*550,"height":imgHeight/xheight*imgHeight})};
      })
      //放大镜
      $smask
      .hover(function(){
        $("#mask").toggleClass("hide")
        $large.toggleClass("hide")
        $(".details-content").toggleClass("hide")
      })
      .mousemove(function(e){
        var xwidth="";
        var xheight="";//实际大小
        $("#test").attr("src",$(this).parent().children(0).attr("src"));
          xwidth=parseInt($("#test").css("width"));
        $("#test").attr("src",$(this).parent().children(0).attr("src"));
          xheight=parseInt($("#test").css("height"));
        var imgWidth=parseInt($(".details-big img").css("width"));
        var imgHeight=parseInt($(".details-big img").css("height"));
        $("#mask").css({"width":550/xwidth*550,"height":imgHeight/xheight*imgHeight})
        var maxWidth=imgWidth-parseInt($("#mask").css("width"));
        var maxHeight=imgHeight-parseInt($("#mask").css("height"));
        var left=e.offsetX-100;
        var top=e.offsetY-150;
        if(left<0) left=0;
        else if(left>maxWidth) left=maxWidth;
        if(top<0) top=0;
        else if(top>maxHeight) top=maxHeight;
        $("#mask").css({left,top});
        var backgroundPosition=`${-xwidth/imgWidth*left}px ${-xheight/imgHeight*top}px`
        $large.css({backgroundPosition})
      })
      //公众号图片放大
      var $app=$(".app img");
      $app.hover(function(){
        $(".app-big").toggleClass("hover");
      })
      //按钮点击样式及效果
      var $btnsSize=$(".btns-size");
      var $btnsColor=$(".btns-color");
      var $detailsLink=$(".details-link");
      /* var $focusSize=$btnsSize.has(".focus");
      var $focusColor=$btnsColor.has(".focus"); */
      function focus(){
        var $choice=$(".choice")
        var $btn=$(this);
        if($btn.is(".focus")){
          $btn.removeClass("focus");
          if($(".details-content").find(".focus").length==1){
            $choice.html(`你选择了：“${$(".details-content").find(".focus").html()}”`)
            .removeClass("hide")
          }
          else{$choice.addClass("hide")}
        }else{
          $btn.siblings().removeClass("focus");
          $btn.addClass("focus");
          if($(".details-content").find(".focus").length==2){
            $choice.html(`你选择了：“${$(".details-content").find(".focus").not($btn).html()}”,“${$btn.html()}”`)
            .removeClass("hide")
          }else if($(".details-content").has(".focus").length==1){
            $choice.html(`你选择了：“${$(".details-content").find(".focus").html()}”`)
            .removeClass("hide")
          }
          }
      }
      $btnsSize.on("click",".btn",focus);
      $btnsColor.on("click",".btn",focus);
      $detailsLink.click(function(){
        var $a=$(this);
        $a.siblings().removeClass("on");
        $a.addClass("on");
      });
      //数量加减
      var $btnCount=$(".btn-count");
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
      })
      //加入购物车
      var uname=document.cookie.split("=")[1];
      $("#addCart").click(function(){
        if(!uname){alert("请先登录！")}
        else if($(".btns-size").children().is(".focus")==false){
          alert("请选择颜色")
        }else if($(".btns-color").children().is(".focus")==false){
          alert("请选择尺寸")
        }else
        {
          var color=$(".btns-color").find(".focus").html();
          console.log(color);
          var size=$(".btns-size").find(".focus").html();
          var count=parseInt($(".count-text").val());
          $.ajax({
            url:"http://127.0.0.1:3000/cart/addCart",
            type:"post",
            data:{uname,pid,designer,title,color,size,count,price,priceOld},
            dataType:"json",
            success(result){
              alert(result.data);
            }
          })
        }
      })
    }
  })
})