<!--将图片轮播封装到子组件中-->
<template>
    <div class="box">
    <mt-swipe :auto="4000">
        <mt-swipe-item v-for="item in imagelist" :key="item.id">
            <img :src="item.img_url" alt=""/>
        </mt-swipe-item>
    </mt-swipe>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                
            }
        },
        created(){

        },
        methods:{

        },
        props:["imagelist"]
    }
</script>
<style>
    /*修改图片轮播高度 */
   .box .mint-swipe{
        height:200px;
    }
    .box .mint-swipe .mint-swipe-item{
        text-align:center;
    }
    .box .mint-swipe .mint-swipe-item img{
        height:100%;
        width:100%;
    }
</style>