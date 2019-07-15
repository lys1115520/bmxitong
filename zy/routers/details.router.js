const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/",(req,res)=>{
    var $pid=parseInt(req.query.pid);
   var sql="select pd.designer,pd.title,pd.price,pd.priceOld,pd.model,pd.colors,pd.sizes,pd.count,pp.pic,pp.pwidth,pp.pheight from zy_product_details pd,zy_product_pic pp where pd.pid=pp.product_id=?"
    pool.query(sql,[$pid],(err,result)=>{
      if(err) throw err;
      res.writeHead(200,{"Access-Control-Allow-Origin":"*"});
      res.write(JSON.stringify(result));
      res.end();
    }) 
})
module.exports=router;