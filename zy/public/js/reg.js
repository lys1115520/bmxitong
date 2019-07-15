$(function(){
  $("#regBtn").click(function(){
    var uname=$("#uname").val();
    var upwd=$("#upwd").val();
    $.ajax({
      url:"http://127.0.0.1:3000/reg",
      type:"post",
      data:{uname,upwd},
      dataType:"json",
      success(result){
        if(result=="该用户名已被注册"){
          alert(result);
        }else{
          alert(result);
          document.cookie="uname="+uname;
          document.cookie="upwd="+upwd;
          location.href="http://127.0.0.1:3000";
        }
      }
    })
  } )
})