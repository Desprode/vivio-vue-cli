<template>
    <div>
        <div class="none-item" v-if="list.length == 0">
            <img src="../../../public/img/cart.png" alt="">
            <h3>购物车是空的!</h3>
            <h3>去逛逛</h3>
        </div>
        <div v-else>
            <div class="cart-list" v-for="(item,index) in list" :key="item.id">
            <input class="item-check" type="checkbox" :checked="item.isSelected" @click="isSelect(index)" >
            <div class="cart-item">
                <img :src="item.img_url" alt="" class="item-img">
                <div class="item-detail" >
                    <h4 class="item-title">{{item.title}}</h4>
                    <span class="item-price">¥{{item.price.toFixed(2)}}</span>
                    <div class="item-count">
                        <button  @click="cartSub(item.id)">-</button>
                        <input class="item-input" :value="item.count"/>
                        <button  type="button" @click="cartAdd(item.id)">+</button>
                    </div>
                </div>
            </div>
            <img class="item-delete" @click="deleteItem(index)" src="../../../public/icons/delete.png" >
        </div>
            <div class="total-price">
                <div> <input type="checkbox" :checked="isAllSelected" @click="isAllSelect()">全选</div>
                <span>总计:¥{{getsubtotal.toFixed(2)}}</span>
                <div class="go-pay">去结算</div>
            </div>
        </div>
    </div>

</template>
<script>
    import {Toast} from 'mint-ui'
    export default {
        data(){
            return {
                list:[],
                isAllSelected:true,
            }
        },
        created(){
            this.getCartList();
        },
        methods:{
            getCartList(){
                var uid=1;
                this.$http.get("cartlist/list?uid="+uid).then
                (result=>{
                    //console.log(result);
                    if(result.body.code == 1){
                        this.list = result.body.msg;
                        //console.log(this.list) 
                    }
                })
            },
            //实现当前购物项加1功能----点哪个购物项哪个购物项加1
            cartAdd(id){
                //console.log(id)
                for(var item of this.list){
                    if(id == item.id){
                        if(item.count<5){
                             item.count ++;
                             this.$store.commit("increment");
                        }else{
                            Toast("温馨提示:商品数量不能超过5件");
                        }
                    }
                }
            },
            cartSub(id){
                for(var item of this.list){
                    if(id == item.id){
                        if(item.count>0){
                            item.count --;
                            this.$store.commit("subtract")
                        }
                    }
                }
            },
          //全选==>单选
          isAllSelect(){
              console.log(this.isAllSelected);
            this.isAllSelected = !this.isAllSelected;
            // this.list.every( (elem,i)=> {
            //   this.list[i].isSelected = this.isAllSelected;
            // })
            for(var i=0;i<this.list.length;i++){
              this.list[i].isSelected = this.isAllSelected;
            }
          },
          //单选==>全选
          isSelect(index){
              var result = true;
            this.list[index].isSelected = !this.list[index].isSelected;
            for(var i=0;i<this.list.length;i++){
              //this.list[i].isSelected = !this.list[i].isSelected;
              console.log(this.list[i].isSelected);
                 result = result && this.list[i].isSelected;
              }
                this.isAllSelected = result;
          },
          //删除
          deleteItem(index){
            this.list.splice(index,1);
          }
        },
        computed:{
            //添加计算属性
            getsubtotal:function(){
                var sum = 0;
                for(var item of this.list){
                  if(item.isSelected){
                    sum += item.price * item.count;
                  }
                }
                return sum;
            }
        }
    }
</script>
<style>
    .none-item{
        text-align: center;
    }
    .cart-list{
        display: flex;
        background: #fff;
        align-items: center;
        margin:0 10px;
        border-bottom: 1px solid #ccc;
    }
    .item-check{
        width:10%;
        height: 20px;
        margin-left:20px;
    }
    .cart-item{
        display: flex;
        width: 70%;

    }
    .item-img{
        width:35%;
        height: 80px;
    }
    .item-detail{
        width:60%;
    }
    .item-title{
        font-size:14px;
    }
    .item-price{
        font-size: 14px;
        color:red;
    }
    .item-count{
        display: flex;
    }
    .item-input{
        width:30px;
        margin-left:-2px;
        margin-right:-2px;
        text-align: center;
    }
    .item-delete{
        width:10%;
        height: 40px;
    }
    .total-price{
        display: flex;
        justify-content: space-around;
        background: #fff;

        margin:0 10px;
        border-bottom: 1px solid #ccc;
        padding:20px 20px;
    }
    .go-pay{
        background: #f44336;
        color:#fff;
        padding:5px 10px;
        font-size: 14px;
        border-radius: 10px;
    }
</style>
