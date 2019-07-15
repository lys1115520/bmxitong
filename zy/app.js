const express=require("express");
const bodyparser=require("body-parser");
const index=require("./routers/index.router");
const details=require("./routers/details.router")
const reg=require("./routers/reg.router")
const login=require("./routers/login.router")
const cart=require("./routers/cart.router")
var server=express();
server.listen(3000);
server.use(express.static("./public"));
server.use(bodyparser.urlencoded({extended:false}));
server.use("/index",index);
server.use("/details",details);
server.use("/reg",reg);
server.use("/login",login);
server.use("/cart",cart);