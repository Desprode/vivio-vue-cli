//购物车列表
//1.引入模块  express
const express = require("express");
//2.创建对象  router
var router = express.Router();
var pool=require("../pool");
//查询所有购物车列表
router.get("/list",(req,res)=>{
    var uid=req.query.uid;
    var sql = "SELECT id,img_url,title,price,count,uid,isSelected FROM cartlist WHERE uid = ?"
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})

//将路由模块导出
module.exports=router;
