<template>
    <div class="newsinfo-container">
        <!--新闻标题-->
        <h1 class="title">{{newsinfo.title}}</h1>
        <!--新闻相关信息-->
       <p class="subtitle">
            <span>{{newsinfo.add_time | timeFilter}}</span>
            <span>点击{{newsinfo.click}}次</span>
       </p>
       <!--内容-->
        <img :src="newsinfo.img_url">
        <div class="content" v-html="newsinfo.content"></div>
        <comment-box :id="this.id"></comment-box>
    </div>
</template>
<script>
    import {Toast} from 'mint-ui'
    import comment from "../subcomponents/comment.vue"
    export default {
        data(){
            return {
                newsinfo:{},  //创建对象保存返回数据
                id:this.$route.params.id
            }
        },
        created(){
            console.log(this.$route.params.id)
            this.getNewsInfo();
            
        },
        methods:{ 
            getNewsInfo(){
                this.$http.get("newslist/details?id="+this.id).then(result=>{
                    console.log(result.body)
                    if(result.body.code==1){
                        this.newsinfo=result.body.msg[0];
                    }else{
                        Toast("数据加载失败")
                    }
                })
            }
        },
        components:{    //注册子组件
            "comment-box":comment   //组件名称:组件对象
        }
    } 
</script>
<style>
    /*左右边距离太大 左右40px */
    .newsinfo-container{
        padding:0 4px;
    }
    /*修改标题 */
    .newsinfo-container .title{
        font-size:20px;
        text-align:center;
        margin:15px 0;
        font-family:"SimHei";
        
    }
    .newsinfo-container .subtitle{
        font-size:13px;
        color:#226af;
        display:flex;
        justify-content:space-between;
        
    }
    .newsinfo-container{
        font-family:"KaiTi";
    }
    .newsinfo-container img{
        width:100%;
    }
</style>