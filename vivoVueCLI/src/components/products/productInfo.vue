<template>
    <div class="goods_info">
        <!--商品的轮播区域-->
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <mt-swipe :auto="4000">
                        <mt-swipe-item >
                            <img :src="imageList.sm_url" alt=""/>
                        </mt-swipe-item>
                        <mt-swipe-item >
                            <img :src="imageList.md_url" alt=""/>
                        </mt-swipe-item>
                        <mt-swipe-item >
                            <img :src="imageList.lg_url" alt=""/>
                        </mt-swipe-item>
                    </mt-swipe>
                </div>
            </div>
        </div>
        <!--商品的购买区域-->
        <div class="mui-card">
            <div class="mui-card-header">{{goodsInfo.lname}}</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <p>
                        市场价:<del>¥{{goodsInfo.price_old}}</del>
                        销售价:<span class="now_price">¥{{goodsInfo.price_new}}</span>
                    </p>
                    <p>
                        <div class="mui-numbox">
                            <button class="mui-btn mui-btn-numbox-minus" type="button" @click="reduceCount">-</button>
                            <input class="mui-input-numbox" type="number" :value="count">
                            <button class="mui-btn mui-btn-numbox-plus" type="button" @click="increaceCount">+</button>
				        </div>
                    </p>
                    <p>
                        <mt-button type="primary" size="small" @click="goCart">立即购买</mt-button>
                        <mt-button type="danger" size="small" @click="addcart">加入购物车</mt-button>
                    </p>
                    
                </div>
            </div>
            <div class="mui-card-footer">页脚</div>
        </div>
        <!--商品的参数区域-->
        <div class="mui-card">
            <div class="mui-card-header">页眉</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    参数区域
                </div>
            </div>
            <div class="mui-card-footer">页脚</div>
        </div>
    </div>
</template>
<script>
    import {Toast} from 'mint-ui'
    //导入图片轮播组件
    import swiper from "../subcomponents/swiper.vue"
    export default {
        data(){
            return {
                imageList:[],
                id:this.$route.params.id,
                goodsInfo:{},
                count:1
            }
        },
        created(){
            this.getImg();
            this.getGoodsInfo();
        },
        methods:{
            getImg(){
              var pid = this.id
                this.$http.get("productlist/detail?pid="+pid).then(result=>{
                    if(result.body.code==1){
                        console.log("详情页轮播图",result.body.msg[0].sm_url)
                        this.imageList = result.body.msg[0]
                    }
                    console.log("轮播去",this.imageList);
                })
            },
            getGoodsInfo(){
                console.log(this.id)
                var id=this.id;
                this.$http.get("productlist/find?id="+id).then(result=>{
                    console.log(result);
                    if(result.body.code == 1){
                        this.goodsInfo=result.body.msg[0]
                    }
                })
            },
            increaceCount(){
                if(this.count<5){
                    this.count++;
                }else{
                    Toast('温馨提示:商品购买数量不得超过5件');
                }
            },
            reduceCount(){
                if(this.count>1){
                    this.count--;
                }
                
            },
            addcart(){
                //调用vue实例对象中操作共享数据的方法
                this.$store.commit("increment")
            },
            goCart(){
                this.$router.push('/cart');
            }
        },
        components:{
            "swiper-box":swiper
        }
    }
</script>
<style>
    .mui-card-content-inner .mint-swipe{
        height:200px;
        text-align: center;
    }
    .mint-swipe .mint-swipe-item img{
        height:200px;
        width:200px;
    }
    .goods_info{
        background-color:#eee;
        overflow:hidden;
    }
    .goods_info .now_price{
        font-size:16px;
        color:red;
        font-weight:bold;
    }
</style>