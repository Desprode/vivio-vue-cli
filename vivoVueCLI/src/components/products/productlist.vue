<template>
    <div class="product-list">
        <div class="product-item" v-for="item in list" :key="item.lid" @click="goDetail(item.id)">
            <img :src="item.img_url">
            <h3 class="title">{{item.title}}</h3>
            <span class="lname">{{item.lname}}</span>
            <div class="info">
                <div class="price">
                    <span class="old"><s>原价:¥{{item.price_old.toFixed(2)}}</s></span><br>
                    <span class="now">现价:¥{{item.price_new.toFixed(2)}}</span>
                </div>
                <span class="stock">库存{{item.stock}}</span> 
            </div>
        </div>
        <mt-button type="primary" size="large" @click="getMore">加载更多......</mt-button>
        
    </div>
</template>
<script>
    import {Toast} from 'mint-ui'
    export default {
        data(){
            return {
                list:[],
                pno:1,
            }
        },
        created(){
            this.getProducts();
        },
        methods:{
            //分页查询商品列表
            getProducts(){
                console.log(1);
                var url="productlist/list?pno="+this.pno;
                console.log(url)
                //发送请求
                this.$http.get(url).then(result=>{
                    console.log(result)
                    //判断
                    if(result.body.code == 1){
                        this.list=this.list.concat(result.body.msg);
                    }else{
                        Toast("服务器开小差了!!!");
                    }
                })
            },
            getMore(){
                this.pno++;
                this.getProducts();
            },
            //获取商品的详细信息
            goDetail(id){
                console.log(id);
                //注意:区分this.route 和this.router
                //this.$route 参数对象,所有参数,params/query都属于它
                //this.$router 导航对象
                //console.log(this);
                //1.最简单的跳转
                this.$router.push("/productInfo/"+id)
                //2.传递对象跳转
                //this.$router.push({path:"/productInfo/"+id})
                //3.方式三:需要在router.js中添加name
                //this.$router.push({name:"productInfo",params:{id}})
            }
        },
    }
</script>
<style>
    .product-list{
        display:flex;
        flex-wrap:wrap;
        padding:7px;
        justify-content:space-between;
    }
    .product-list .product-item{
        display:flex;
        flex-direction:column;
        justify-content:space-between;
        min-height:293px;
        width:49%;
        border:1px solid #ccc;
        box-shadow:0 0 8px #ccc;
        margin:4px 0;
        padding:2px;
        text-align:center;
    }
    .product-list .product-item img{
        width:100%;
        background-image:url(/img/hotsell.png);
        background-repeat:no-repeat;
        background-size:25px 25px;
        background-position:right top;
    }
    .product-list .product-item .title{
        font-size:14px;
    }
    .product-list .product-item .lname{
        font-size:14px;
        font-weight:lighter;
    }
    .product-list .product-item .info{
        
    }
    .product-list .product-item .info .price .now{
        color:red;
        font-size:14px;
        font-weight:bold;
    }
    .product-list .product-item .info .price .old{
        text-decoration:line-through;
        font-size:14px;
    }
    .product-list .product-item .info .stock{
        font-size:14px;
    }
</style>