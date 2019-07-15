$(function(){
  $.ajax({
    url:"http://localhost:3000/index",
    type:"get",
    dataType:"json",
    success:function(result){
      var html="";
      for(var imgs of result){
        var img=imgs.img;
        html+=`<li class="banner-item"><a href=""><img src="${img}" alt=""></a></li>`
      }
      $(".banner-list").html(html);
    }
  })
  $(".banner-icon").click(function(){
    isClick=true
    var left=-100*($(this).html()-1)+"%"
    $(".banner-list").css({left,transitionDuration:"1s"});
    $(this).siblings().removeClass("myRed");
    $(this).addClass("myRed");
    clearInterval(time);
    clearInterval(time1);
    var i=$(this).html();
    var time1=setInterval(function(){
      if(i<4){
        var left=-100*i+"%";
        $(".banner-list").css({left,transitionDuration:"1s"});
        $(`.banner-icon:eq(${i})`).siblings().removeClass("myRed");
        $(`.banner-icon:eq(${i})`).addClass("myRed");
        i++;
      }else{i=0};
    },3000)});
    var i=0;
    var time=setInterval(function(){
      if(i<4){
        var left=-100*i+"%";
        $(".banner-list").css({left,transitionDuration:"1s"});
        $(`.banner-icon:eq(${i})`).siblings().removeClass("myRed");
        $(`.banner-icon:eq(${i})`).addClass("myRed");
        i++;
      }else{i=0};
    },3000);
  })
