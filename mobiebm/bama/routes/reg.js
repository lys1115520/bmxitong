const express=require("express")
const router=express.Router();
const pool=require("../pool")
//1.登陆接口 post
router.post("/",(req,res)=>{
	var $uname=req.body.uname;
    var $upwd=req.body.upawd;
    var $phone=req.body.phone;
	var sql1="select * from bm_user where uname=?";
	pool.query(sql1,[$uname],(err,result)=>{
		if(err) throw err;
		if(result.length>0){//有用户名重复
			res.send(result);
			//console.log(result)
			return;

		}else{
            var sql2="INSERT INTO bm_user SET ?";
            pool.query(sql2,[req.body],(err,result)=>{
                if(err) throw err;
                if(result.affectedRows>0){
					res.send({code:200,msg:'注册成功'});
					console.log("注册成功");
                }
            });
		}
	});
});
module.exports=router;