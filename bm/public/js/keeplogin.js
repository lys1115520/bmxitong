$(function(){
    //var cookie=document.cookie;
    //console.log(cookie);
    //console.log(req.session.uid);
    // $.ajax({
    //     url:"http://127.0.0.1:3000/keeplogin",
    //     type:"get",
    //     dataType:"json",
    //     success:function(result){
    //         console.log(result);
    //     }
    // });

    var uid=localStorage.getItem("uid");
    $.ajax({
        url:"http://127.0.0.1:3000/keeplogin",
        type:"post",
        data:{uid},
        dataType:"json",
        success:function(result){
            
            //console.log(result)
            if(result.length>0){
                $("#toLogin").html(`欢迎${result[0].uname}`).attr("href","javascript:;")
                .next().html("退出").click(function(){
                    localStorage.removeItem("uid");
                });
               // alert("欢迎回来");
            }else{
                alert("注册成功");
            }
        }
    });
    //console.log(uid)
}); 