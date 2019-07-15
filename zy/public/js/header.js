$(function(){
  var tabs=$("[data-toggle=show]");
  var text=$("#search-text");
  //显示搜索项
  tabs.click(function(){
    $(this).siblings().removeClass("selected");
    $(this).addClass("selected");
    $("#search-text").prop("placeholder",`搜${$(this).html()}`)
    $(`#${$(this).attr("data-target")}`).siblings().addClass("hide");
    $(`#${$(this).attr("data-target")}`).removeClass("hide");
  })
  //验证搜索是否为空;
  var reg=/^\s*$/ig;
  var button=document.querySelector("button");
  button.onclick=function(){
    if(reg.test(text.value)==true){alert("请输入内容")};
  }
  $("#login").click(function(){
    window.open("http://127.0.0.1:3000/login.html")
  })
  $("#reg").click(function(){
    window.open("http://127.0.0.1:3000/reg.html")
  })
  var cookie=document.cookie.split(";");
  var uname=cookie[0].split("=")[1];
  $.ajax({
    url:"http://127.0.0.1:3000/cart",
    type:"post",
    data:{uname},
    dataType:"json",
    success(result){
      if(uname){
        var sum=0;
        for(var res of result){
          sum+=parseInt(res.count);
        }
        var html=`<li class="user-item"><a href="javascript:;" class="myfontsize user-link" id="exit">| 退出</a></li>
        <li class="user-item"><a href="javascript:;" class="myfontsize user-link" id="cart">| 购物车(${sum})</a></li>
        <li class="user-item"><a href="javascript:;" class="myfontsize user-link">${uname},欢迎您！</a></li>`
        $(".user").html(html);
      }
      $("#exit").click(function(){
        document.cookie="uname=";
        var html=`<li class="user-item"><a href="javascript:;" class="myfontsize user-link">| 购物车(0)</a></li>
        <li class="user-item"><a href="javascript:;" class="myfontsize user-link" id="login">| 登录</a></li>
        <li class="user-item"><a href="javascript:;" class="myfontsize user-link" id="reg">注册</a></li>`
        $(".user").html(html);
      })
      $("#cart").click(function(){
        window.open("http://127.0.0.1:3000/cart.html")
      })
    }
  })
})
