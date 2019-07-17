const mysql=require('mysql');
var pool=mysql.createPool({
   host:'127.0.0.1',
   port:'3306',
   user:'root',
   password:'',
   database:'bm', //要使用的数据库
   connectionLimit:15 //最大连接数量
});
module.exports=pool;//导出连接池对象
