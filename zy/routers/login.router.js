const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.post("/",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  if(uname&&upwd){
    var sql="select uid from zy_user where uname=? and upwd=md5(?)"
    pool.query(sql,[uname,upwd],(err,result)=>{
      if(err) throw err;
      if(result.length>0){
        res.writeHead(200,{"Access-Control-Allow-Origin":"*"});
        res.write(JSON.stringify(`登录成功，欢迎${uname}`));
        res.end();
      }
    })
  }
})
module.exports=router;