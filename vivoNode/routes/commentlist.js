//留言列表
//1.引入模块  express
const express = require("express");
//2.创建对象  router
var router = express.Router();
var pool=require("../pool")
//3.处理分页查询留言列表请求  get/list
router.get("/list",(req,res)=>{
    //(1).参数 nid新闻编号 pno页码
    var nid=req.query.nid;
    var pno=req.query.pno;
    if(!pno){pno=1}
    //(2).创建正则表达式验证参数是否正确
    var reg=/^\d{1,}$/; 
    if(!reg.test(pno)){
        res.send({code:-1,msg:"页码格式有误"});
        return;
    }
    if(!reg.test(nid)){
        res.send({code:-2,msg:"新闻编号格式不正确"});
        return;
    }
    //(3).sql语句
    var sql="SELECT id,username,user_avatar,add_time,content,nid FROM commentlist WHERE nid = ? LIMIT ?,?";
    var pagesize=3;   //页面大小
    var offset = parseInt((pno-1)*pagesize);  //查询偏移
    nid = parseInt(nid);
    pool.query(sql,[nid,offset,pagesize],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
    //(4)json
    
});
//4.发表留言
router.get("/postcomment",(req,res)=>{
    //1.参数 nid content username
    var username=req.query.username;
    var content=req.query.content;
    var nid=req.query.nid;
    var user_avatar=req.query.user_avatar;
    //2.sql 
    var sql="INSERT INTO commentlist(username,user_avatar,add_time,content,nid) VALUE(?,?,now(),?,?)"
    pool.query(sql,[username,user_avatar,content,nid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"发表成功"})
    })
})
//4.导出router对象
module.exports=router;
