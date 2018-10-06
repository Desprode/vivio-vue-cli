<template>
    <div class="cmt-container">
        <h1>发表评论</h1>
        </hr> 
        <!--发表评论的区域-->
        <textarea placeholder="请输入评论内容(最多不超过120字)" maxlength="120" v-model="msg">
        </textarea> 
        <mt-button class="bt" type="danger" size="large" @click="postComment">发表</mt-button>
        <!--评论列表--><!--
        <div class="cmt-list" v-for="(item,i) in list" :key="item.id">
            <div class="cmt-item">
                <img class="avatar" :src="item.user_avatar">
                <div class="cmt-title">
                    第{{i+1}}楼,用户:{{item.username}}发表时间:{{item.add_time | timeFilter}}

                </div>
                 <div class="cmt-body">
                    {{item.content}}
                </div>
            </div>
        </div>-->
        <!--评论列表-->
        <ul class="mui-table-view">
				<li class="mui-table-view-cell mui-media" v-for="(item,i) in list" :key="item.id">
						<img class="mui-media-object mui-pull-left" :src="item.user_avatar">
						<div class="mui-media-body">
							
							<p class='mui-ellipsis'>
                                {{item.username}}<span>{{i+1}}楼</span>
                                <p>{{item.add_time | timeFilter}}</p>
                            </p>
                            <div class="cmt-body">
                            {{item.content}}
                        </div>
						</div>
				</li>
			</ul>
            
        <mt-button class="cmt-list" @click="getMore" type="primary" size="large">加载更多......</mt-button>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default {
        data(){
            return {
                msg:"",
                pno:1,  //默认第一页
                list:[],
            }
        },
        created(){
            console.log("父组件传递的值"+this.id);
            this.getComments();
        },
        methods:{
            postComment(){
                //alert(123)
                //1.创建正则表达式,验证用户发表的内容
                var m=this.msg.trim();
                //2.如果格式不正确,提示
                if(m.length < 3){
                    Toast("亲,你发表的内容过少");
                    return;
                }else{
                //3.格式正确,发送ajax请求 nid content
                    var url=`commentlist/postcomment?username=钟无艳&user_avatar=http://127.0.0.1:3000/img/avatar/avatar5.jpg&content="${m}"&nid=${this.id}`
                    this.$http.get(url).then(result=>{
                        if(result.body.code == 1){
                            Toast(result.body.msg);
                            this.msg="";
                        }
                    })
                }
            },
            getComments(){
                //获取评论列表
                var nid=this.id;
                var p=this.pno;
                //发送ajax请求,获取当前页的数据
                this.$http.get(`commentlist/list?nid=${nid}&pno=${p}`).then(result=>{
                    console.log(result.body);
                    //判断数据获取是否成功
                    if(result.body.code == 1){
                        //追加数据
                        this.list=this.list.concat(result.body.msg);
                    }else{
                        //失败提示信息
                        Toast("网络开小差了!!!")
                    }
                })
            },
            getMore(){
                //加载更多
                //1.当前页加1
                this.pno++;
                //2.调用方法
                this.getComments();
            },
        },
        props:["id"]
    }
</script>
<style>
    /*修改标题大小* */
    .cmt-container h1{
        font-size:18px;
        font-weight:bold;
    }
    /*修改多行文本框 */
    .cmt-container textarea{
        font-size:14px;
        height:85px;
        margin:0
    }
    /*评论列表 */
    .cmt-container .cmt-list{
        margin:20px 0;
    }
    .cmt-container .cmt-list .cmt-item{
        font-size:13px;
    }
    .cmt-container .cmt-list .cmt-item .avatar{
        width:25px;
        height:25px;
    }
    .cmt-container .cmt-list .cmt-item .cmt-title{
        line-height:30px;
        background-color:pink;
    }
    .cmt-container .cmt-list .cmt-item .cmt-body{
        line-height:30px;
        text-indent:2em;
    }
    .cmt-container .mt{
        margin:10px;
    }
</style>