const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("",(req,res)=>{
  var sql="select img from zy_index_banner";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.writeHead(200,{"Access-Control-Allow-Origin":"*"});
    res.write(JSON.stringify(result));//res.send(result)的原本形态
    res.end();
  })
})
module.exports=router;