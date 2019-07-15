const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/",(req,res)=>{
  var lid=req.query.lid;
  var output={product:{},pics:[],dtlpics:[]};
  if(lid!==undefined){
    var sql1=`select * from bm_product_details where lid=?`;
    pool.query(sql1,[lid],(err,result)=>{
      if(err) console.log(err);
        //console.log(result);   
      output.product=result[0];
      
      var sql2=`select * from bm_main_pics where lid=?`;
      pool.query(sql2,[lid],(err,result)=>{
        //console.log(result);
        if(err) console.log(err);   
        output.pics=result;

        var sql3=`select * from bm_details_pics where lid=?`;
        pool.query(sql3,[lid],(err,result)=>{
          if(err) console.log(err);   
          output.dtlpics=result;
          res.send(output);
          //console.log(output)
        })    
      });
    })
  }else{
    res.send(output);
  }
})

module.exports=router;