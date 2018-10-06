const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/list",(req,res)=>{
    var sql = "SELECT id,title,path FROM photolist";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})

module.exports=router;
