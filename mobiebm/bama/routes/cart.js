const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/",(req,res)=>{
  var uid=req.query.uid;
    var sql1=`select * from bm_cart where uid=?`;
    pool.query(sql1,[uid],(err,result)=>{
        if(err) console.log(err);
          
        if(result.length>0){
            res.send(result)
            //console.log(result); 
        }else{
            res.send(result)
            //console.log(result);
        }
    })
    //
})

module.exports=router;