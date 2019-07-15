$(function(){
  $("#loginBtn").click(function(){
    var uname=$("#uname").val();
    var upwd=$("#upwd").val();
    $.ajax({
      url:"http://127.0.0.1:3000/login",
      type:"post",
      data:{uname,upwd},
      dataType:"json",
      success(result){
        alert(result);
        document.cookie="uname="+uname;
        location.href=`http://127.0.0.1:3000/index.html`;
      }
    })
  })
})