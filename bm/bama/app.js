//使用express构建web服务器 
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
/*引入路由模块*/
const details=require("./routes/details.js");
const login=require("./routes/login.js");
const reg=require("./routes/reg.js");
const keeplogin=require("./routes/keeplogin.js");
const addcart=require("./routes/addcart.js");
const cart=require("./routes/cart.js");
//创建web服务器 托管静态资源到public下 使用中间件
var app = express();
app.listen(3000);
//统一伪装跨域，之后不用再res.writeHead
app.use(cors({
  origin:["http://127.0.0.1:5500"]
}))
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//添加session功能
const session = require("express-session");
app.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}));
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
app.use("/details",details);
app.use("/login",login);
app.use("/reg",reg);
app.use("/keeplogin",keeplogin);
app.use("/addcart",addcart);
app.use("/cart",cart);
