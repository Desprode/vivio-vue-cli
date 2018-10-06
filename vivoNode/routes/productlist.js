//商品列表与商品详情
//1.引入模块  express
const express = require("express");
//2.创建对象  router
var router = express.Router();
var pool=require("../pool")
//3.处理请求  
router.get("/list",(req,res)=>{
    var pno = req.query.pno;
    if(!pno){
        pno=1;
    }
    var pagesize=4;   //页面大小
    var offset = parseInt((pno-1)*pagesize);  //查询偏移
    var sql = "SELECT id,title,price_old,price_new,lname,stock,img_url FROM productlist LIMIT ?,?";
    pool.query(sql,[offset,pagesize],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})
//依据商品的指定编号查询商品
router.get("/find",(req,res)=>{
    var id=req.query.id;
    var sql = "SELECT id,title,price_old,price_new,lname,stock,img_url FROM productlist WHERE id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})
//根据商品的编号加载详情页的商品
router.get("/detail",(req,res)=>{
    var pid = req.query.pid;
    var sql = "SELECT sm_url,md_url,lg_url FROM pro_pic WHERE pid=?";
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    })
});
//4.导出router对象
module.exports=router;
