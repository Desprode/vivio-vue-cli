const express = require("express");

var router = express.Router();
var pool = require("../pool");
 //功能1:显示新闻
router.get("/list",(req,res)=>{
    var sql = "SELECT id,title,add_time,click,img_url FROM newslist";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    });
});
//功能2:显示指定新闻详情
router.get("/details",(req,res)=>{
    var id = req.query.id;
    var sql="SELECT id,title,add_time,click,img_url,content FROM newslist WHERE id = ?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})

module.exports=router;


