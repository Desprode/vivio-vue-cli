//main.js 加载所有的资源,创建vue实例对象
import Vue from 'vue'
import App from './App.vue'
//1.加载路由模块
import router from './router'

//1.1加载模块 VueResourse
import VueResourse from 'vue-resource'
//1.2将VueResourse注册vue
Vue.use(VueResourse)
//1.2.1设置请求根路径
Vue.http.options.root = "http://127.0.0.1:3000/"
//1.2.2创建一个过滤器显示时间
Vue.filter("timeFilter",function(val){
  var date=new Date(val)
  var Week=["日","一","二","三","四","五","六"]
  var Y= date.getFullYear()//2018年08月22日 星期三 上午02:22
  var M=date.getMonth()+1;
  M<10&&(M="0"+M)
  var D=date.getDate()
  D<10&&(D="0"+D)
  var T=Week[date.getDay()]
  
  var H=date.getHours()
  var am=H<12?"上午":"下午";
  H>12&&(H-=12);
  H<12&&(H="0"+H)
  var U=date.getMinutes()
  U<10&&(U="0"+U)
  return `${Y}年${M}月${D}日   星期${T}  ${H}时${U}分`;
})
//1.2.3创建一个过滤器,显示过长的标题
Vue.filter("ellipses",function(val,len){
  return val.slice(0,len)+"..."
});


//1.3将mint-ui加载项目
//1.4按需引入组件header  顶部固定导航栏
//  按需引入Swipe ,SwipeItem 图片轮播
//import {Header,Swipe,SwipeItem,Button} from "mint-ui"
//1.5注册组件
//Vue.component(Header.name,Header)  //<mt-header>
//Vue.component(Swipe.name,Swipe)    //注册swipe
//Vue.component(SwipeItem.name,SwipeItem)  //注册swipe.Item
//Vue.component(Button.name,Button)
//1.6 引入mui中css
import "./lib/mui/css/mui.css"
import "./lib/mui/css/icons-extra.css"



//1.7引入mint-ui组件所需的样式文件
//查找默认文件路径
//node_module/mint-ui/lib/style.css
//import "./lib/mui/css/style.css"
import "mint-ui/lib/style.css"

/*全部引入mintui组件  实现懒加载效果 */
import MintUI from  "mint-ui"
Vue.use(MintUI);

/*引入vuex组件,实现数据共享 */
import Vuex from "vuex"
//注册vuex
Vue.use(Vuex)
//2.是否为生成模式
Vue.config.productionTip = false

//创建一个vue实例对象挂载
//new Vue.store();得到一个数据仓储对象
var store = new Vuex.Store({
  state:{count:0},
  mutations:{
    increment(state){
      state.count++;
    },
    subtract(state){
      state.count--;
    }
  },
  getters:{
    optCount:function(state){
      return state.count;
    }
  }
})
//3.创建一个vue实例对象挂载 public/index,html#app
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
