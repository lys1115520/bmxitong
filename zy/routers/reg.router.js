const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.post("/",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  if(uname&&upwd){
    pool.query("select uid from zy_user where uname=?",[uname],(err,result)=>{
      if(err) throw err;
      if(result.length>0){
        res.writeHead(200,{"Access-Control-Allow-Origin":"*"});
          res.write(JSON.stringify("该用户名已被注册"));
          res.end();
      }else{var sql="insert into zy_user values (null,?,md5(?))";
      pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
          res.writeHead(200,{"Access-Control-Allow-Origin":"*"});
          res.write(JSON.stringify(`注册成功,用户名为${uname}`));
          res.end();
        }
      })}
    })
  }
})
module.exports=router;