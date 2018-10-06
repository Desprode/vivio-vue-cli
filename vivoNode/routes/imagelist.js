//1.引入模块  express
const express = require("express");
//2.创建对象  router
var router = express.Router();
var pool=require("../pool")
//3.处理请求  get/list
router.get("/list",(req,res)=>{
    //3.1 参数
        //无参数
    //3.2 sql
    var sql=`SELECT id,img_url,title FROM imagelist`;
    //3.3返回数据格式
    pool.query(sql,(err,result)=>{
        //判断查询是否出错,如果出现,直接抛出
        if(err) throw err;
        
        //console.log(result)  //数组
        //将结果返回给客户端
        //返回数据 1 告诉客户端成功还是失败
        //返回查询结果
        res.send({code:1,msg:result})
        })
})

//4.导出router对象
module.exports=router;
