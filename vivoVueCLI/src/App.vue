<template>
  <div class="app-container">
      <!--1.顶部固定导航栏-->
       <mt-header fixed title="vivo商城">
            <mt-button icon="back" slot="left" @click="back"></mt-button>
            <mt-button icon="more" slot="right"></mt-button>
       </mt-header>
       <!--2.多个组件的切换 router-view-->
       <router-view>

       </router-view>
       <!--3.tabbar 固定在底部的导航条-->
       <nav class="mui-bar mui-bar-tab">
            <router-link class="mui-tab-item mui-active" to="/home">
                <span class="mui-icon mui-icon-home"></span>
                <span class="mui-tab-label">首页</span>
            </router-link>
            <router-link class="mui-tab-item" to="/member">
                <span class="mui-icon mui-icon-contact"></span>
                <span class="mui-tab-label">会员</span>
            </router-link>
            <router-link class="mui-tab-item" to="/cart">
                <span class="mui-icon mui-icon-extra mui-icon-extra-cart">
                    <span class="mui-badge">{{$store.getters.optCount}}</span>
                </span>
                <span class="mui-tab-label">购物车</span>
            </router-link>
            <router-link class="mui-tab-item" to="/search">
                <span class="mui-icon mui-icon-search"></span>
                <span class="mui-tab-label">搜索</span>
            </router-link>
        </nav>   
  </div>
</template>
<script>
    export default {
        data(){
            return {}
        },
        methods:{
            back(){
                if(location.href!="http://localhost:8080/#/home"){
                    this.$router.go(-1);
                }
            }
        }
    }
</script>
<style>
    /*mt-header 固定布局显示组件 */
    .app-container{
        padding-top:40px;
        padding-bottom:50px;
    }
</style>
