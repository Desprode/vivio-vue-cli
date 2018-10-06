<template>
    <div class="photo_container">
        
        <ul v-for="item in list" :key="item.id">
            <li>
                <img :src="item.path">
                <h4>{{item.title}}</h4>
                
            </li>
        </ul>
    </div>
</template>
<script>
    import {Toast} from "mint-ui" 
    export default {
        data(){
            return {
                list:[],
            }
        },
        created(){
            this.getPhotoList();
        },
        methods:{
           getPhotoList(){
               this.$http.get("photolist/list").then(result=>{
                   console.log(result);
                   if(result.body.code == 1){
                       this.list=result.body.msg;
                   }else{
                       Toast("网络开小差了!!!")
                   }
               })
           },
            
        }
    };
</script>
<style>
    /*修改懒加载图片的样式 */
    .photo_container img[lazy=loading]{
        width:40px;
        height:300px;
        margin:auto;
    };
    .photo_container{
        padding:3px;
    }
    .photo_container ul{
        list-style:none;
        padding:0
    }
    .photo_container ul li img{
        width:100%;
    }
    .photo_container ul li h4{
        text-align:center;
        font-size:16px;
        height:96px;
        line-height:96px;
        background-image:url(/img/outdate.png);
        background-repeat:no-repeat;
        background-position:right top;

        
    }
</style>
