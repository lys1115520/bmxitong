const express=require("express")
const router=express.Router();
const pool=require("../pool")
//1.登陆保持接口 post
router.post("/",(req,res)=>{
	var $uid=req.body.uid;
	var sql="select uname from bm_user where uid=?";
	pool.query(sql,[$uid],(err,result)=>{
		//console.log(result)
		if(err) console.log(err);
		if(result.length>0){//result.length>0
			res.send(result);
		}else{
			res.send("用户未登录");
		}
	});
});
module.exports=router;