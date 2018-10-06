import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import About from './views/About.vue'
//1.1加载home组件
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import MemberContainer from "./components/tabbar/MemberContainer.vue"
import CartContainer from "./components/tabbar/CartContainer.vue"
import SearchContainer from "./components/tabbar/SearchContainer.vue"

//加载newsinfo组件
import NewsList from "./components/news/NewsList.vue"
import NewsInfo from "./components/news/NewsInfo.vue"

//加载photos组件
import Photolist from "./components/photos/photolist.vue"

//加载product组件
import Productlist from "./components/products/productlist.vue"
import ProductInfo from "./components/products/productInfo.vue"

Vue.use(Router)
 
export default new Router({
  routes: [
    { 
      //path 组件访问路由  对应组件
      //如何访问 /home <router-link  to="/home">
      path: '/home',component: HomeContainer,
    },
    {path:'/',redirect:'/home'},
    {path: '/member',component: MemberContainer},
    {path:'/cart',component:CartContainer},
    {path:'/search',component:SearchContainer},
    {path:'/home/newslist',component:NewsList},
    {path:'/newsinfo/:id',component:NewsInfo},
    {path:'/photolist',component:Photolist},
    {path:'/productlist',component:Productlist},
    {path:'/productInfo/:id',component:ProductInfo,name:"productInfo"}

  ]
})
