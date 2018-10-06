<template>
    <div class=newslist-container>
       <ul class="mui-table-view">
				<li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id">
					<router-link :to="'/newsinfo/'+item.id">
						<img class="mui-media-object mui-pull-left" :src="item.img_url">
						<div class="mui-media-body">
							{{item.title | ellipses(20)}}
							<p class='mui-ellipsis'>
                                <span>{{item.add_time | timeFilter}}</span>
                                <span>点击{{item.click}}次</span>
                            </p>
						</div>
					</router-link>
				</li>
			</ul>
    </div>
</template>
<script>
    import {Toast} from 'mint-ui';
    export default {
        data(){
                return {
                    list:[]
                } 
            },
        created(){
            this.getList();
        },
        methods:{
            getList(){
                this.$http.get("newslist/list").then(result=>{
                    //console.log(result)
                    var obj=result.body;
                    if(obj.code==1){
                        this.list=obj.msg;
                    }else{
                        Toast("数据加载失败")
                    }
                })
            }
        }
    }
</script>
<style>
    .newslist-container .mui-table-view .mui-table-view-cell{
        margin:10px auto;
    }
    .mui-table-view{
        font-size:14px;
    }
    .mui-table-view .mui-ellipsis{
        font-size:12px;
        color:#0aaeed;
        display:flex;
        justify-content:space-between;
    }
</style>
