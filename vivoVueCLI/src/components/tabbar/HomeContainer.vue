<template>
     <div class="app">
        <!--第一部分:图片轮播-->
        <swiper-box :imagelist="list"></swiper-box>
        <!--第二部分:六宫格-->
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/home/newslist">
                    <img src="/img/news.png">
                    <div class="mui-media-body">vivo评测</div>
                </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/photolist">
                    <img src="/img/suning.png">
                    <div class="mui-media-body">社区活动</div>
                </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/productlist">
                    <img src="/img/menu1.png">
                    <div class="mui-media-body">热销机型</div>
                </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="/img/order.png">
                <div class="mui-media-body">专属订制</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="/img/tine.png">
                <div class="mui-media-body">秒杀</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="/img/new.png">
                <div class="mui-media-body">以旧换新</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="/img/menu4.png">
                <div class="mui-media-body">发表评论</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="/img/menu7.png">
                <div class="mui-media-body">联系我们</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="/img/cart.png">
                <div class="mui-media-body">自己开店</div></a></li>
        </ul>
    </div> 
</template>
<script>
    import swiper from "../subcomponents/swiper.vue"
    //1.加载toast组件
    import {Toast} from "mint-ui";
    //2.创建vue实例
   export default {
       data(){
           return {
               list:[
                    
                    ]
           }
       },
       created(){
           this.getImageList();
       },
       methods:{
          //homecontainer.vue 发送ajax请求
          //获取图片列表
          //选择一:axios   新解决方案
          //选择二:vue-resourse   旧(公司大量使用)
          getImageList(){
              this.$http.get("http://127.0.0.1:3000/imagelist/list").then(result=>{
                  var obj = result.body;
                  if(obj.code == 1){//返回成功的数据
                    this.list=obj.msg;
                  }else{//返回失败的数据
                    Toast("数据加载失败")
                  }
                  console.log("首页轮播",this.list);
              })
          }
       },
       components:{
           "swiper-box":swiper
       }
   }
</script>
<style>
    .app img{
        width:100%;
        height:100%;
    }
    /*背景颜色*/
    .app .mui-grid-view.mui-grid-9{
            background-color:#fff;
        }
        /*字体大小*/
    .app .mui-grid-view.mui-grid-9 .mui-table-view-cell .mui-media-body
        {
            font-size:14px
        }
        /*边框清空*/
    .app .mui-grid-view.mui-grid-9 .mui-table-view-cell{
            border:0;
        }  
        /*修改图片大小 */
    .app .mui-grid-view.mui-grid-9 .mui-table-view-cell img{
        width:40px;
        height:40px;
    }
</style>