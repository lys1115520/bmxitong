const express=require("express");
const pool=require("../pool")
const router=express.Router();
router.post("/",(req,res)=>{
  var uname=req.body.uname;
  if(uname){
    var sql="select uname,designer,title,color,size,count,price,priceOld,pid from zy_shoppingcart where uname=?"
    pool.query(sql,[uname],(err,result)=>{
      if(err) throw err;
      output=result;
      if(result.length>0){
        for(var resu of result){
          var pid=resu.pid
          var sql="select pic from zy_product_pic where product_id=?"
          pool.query(sql,[pid],(err,result)=>{
            if(err) throw err;
            output.pic=result[0];
          })
        }
        res.writeHead(200,{"Access-Control-Allow-Origin":"*"});
        res.write(JSON.stringify(output));
        res.end();
      };
    })
  }
})
router.post("/addCart",(req,res)=>{
  var uname=req.body.uname;
  var pid=req.body.pid;
  var designer=req.body.designer;
  var title=req.body.title;
  var color=req.body.color;
  var size=req.body.size;
  var count=req.body.count;
  var price=req.body.price;
  var priceOld=req.body.priceOld;
  if(pid){
    var sql="insert into zy_shoppingcart values(null,?,?,?,?,?,?,?,?,?)"
    pool.query(sql,[uname,pid,designer,title,color,size,count,price,priceOld],(err,result)=>{
      if(err) throw err;
      if(result.affectedRows>0){
        res.writeHead(200,{"Access-Control-Allow-Origin":"*"});
        res.write(JSON.stringify({code:1,data:"加入购物车成功"}));
        res.end();
      }
    })
  }
})
module.exports=router;