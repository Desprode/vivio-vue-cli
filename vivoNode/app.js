//1.引入相应模块  express
const express = require("express");
var app = express();
//2.创建路由对象
const routerImage = require("./routes/imagelist");
const routerList = require("./routes/newslist")
const routerComment = require("./routes/commentlist")
const routerPhoto = require("./routes/photolist");
const routerProduct = require("./routes/productlist")
const routerCart = require("./routes/cartlist")
//引入跨域模块
var  cors = require("cors");

//3.监听端口
var server=app.listen(3000);
//4.指定静态目录
app.use(express.static(__dirname+"/public"));
//使用跨域模块
app.use(cors({
    origin:[
        "http://127.0.0.1:8080",
        "http://localhost:8080"
    ],
    credentails:true
}))
//5.挂载路由到路由器

app.use("/imagelist",routerImage);
app.use("/newslist",routerList)
app.use("/commentlist",routerComment)
app.use("/photolist",routerPhoto)
app.use("/productlist",routerProduct)
app.use("/cartlist",routerCart)