const express=require("express")
const router=express.Router();
const pool=require("../pool")
//1.登陆接口 post
router.post("/",(req,res)=>{
	var $uname=req.body.uname;
	var $upwd=req.body.upawd;
	var sql="select * from bm_user where uname=? and upawd=?";
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		//console.log(result)
		if(err) console.log(err);
		if(result.length>0){//result.length>0
			req.session.uid = result[0].uid; 
			res.send(result);
			//console.log(req.session)
		}else{
			console.log("用户名或密码错")
			res.send(result);
		}
	});
});
module.exports=router;