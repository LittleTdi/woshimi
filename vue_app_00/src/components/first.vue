<template>
    <div id="app-home">
        
        <mt-swipe>
            <mt-swipe-item v-for="img of imgs" :key="img.sid" :style="`background:${colors[parseInt(img.sid)-1]}`">
                <table></table>
                <img :src="`http://127.0.0.1:3000/${img.swipe_img}`" alt="">
            </mt-swipe-item>
        </mt-swipe> 
        <div class="mui-content">
            <ul class="mui-table-view mui-grid-view">
                <li class="mui-table-view-cell mui-media" v-for="grid of grids" :key="grid.i">
                    <router-link :to="grid.href">
                        <img :src="`http://127.0.0.1:3000/${grid.grid_img}`">
                        <div class="mui-media-body">{{grid.title}}</div>
                    </router-link>
                </li>
            </ul>
        </div>

        <div class="cate">
            <div v-for="cate of cates" :key="cate.cid">
                <img :src="cate.url" alt="">
            </div>
        </div>
    </div>
</template>


<script>
export default {
    data(){
        return{
            imgs:[],
            colors:["#8CB2C5","#948CF3","#FFB2BC","#FCDE1A","#FFE6FC"],
            grids:[],
            cates:[]
        }
    },
    created(){
        this.getImgs();
        this.getGrids();
        this.getCate();
    },
    methods:{
        getImgs(){
            this.axios.get("http://127.0.0.1:3000/home").then(result=>{
                this.imgs=result.data.data;
                //console.log(this.imgs);
                return this.imgs;
            })
        },
        getGrids(){
            this.axios.get("http://127.0.0.1:3000/grid").then(result=>{
                this.grids=result.data.data;
                return this.grids;
            })
        },
        getCate(){
            this.axios.get("http://127.0.0.1:3000/cate").then(result=>{
                this.cates=result.data.data;
                return this.cates;
            })
        }
    },
}

</script>
<style>
    *{padding:0;margin:0;}
    .mint-swipe-item img{
        left:5%;
    }
    div,.mui-content,ul{
        border:none;
        outline:none;
    }
    body{
        background-color:#fff;
    }
    #app-home .mint-swipe{
        height:195px;
        padding-bottom:30px; 
    }
    #app-home .mint-swipe img{
        width:90%;
        margin-top:30px;
    }
    #app-home .mint-swipe .mint-swipe-item{
        text-align: center;
        height:135px;
    }
    .app-container{
        padding-top:10px;
    }
    li.mui-media{
        text-align: center;
    }
    .mui-table-view .mui-media img{
        width:50%;
        display:block;
    }
    ul.mui-table-view.mui-grid-view{
        display:flex;
        justify-content:center; 
        background:#efeff4;
        border:none;
    }
    .mui-content{
        margin-top:0;
    }

    div.mui-content>.mui-table-view:first-child{
        margin-top:0;
    }
    .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body{
        font-size: 8px !important;
    }
    #app-home .cate{
        padding:0 20px;
    }
    #app-home .cate div{
        float:left;
        padding:10px;
        width:49%;
        margin-top:15px;
    }
    #app-home .cate>div:first-child{
        height:160px;
        position:relative;
        background:#F1FEED;
        width:48%;
        border-radius:10px;
    }
    #app-home .cate>div:first-child img{
        position:absolute;
        bottom:20%;
        left:0;
        width:100%;
    }
    #app-home .cate>div:nth-child(2),
    #app-home .cate>div:last-child{
        width:46%;
        height:72.5px;
        text-align: center;
        margin-left:15px;
        border-radius:10px;
    }
    #app-home .cate>div:nth-child(2){
        background:#EBF5FF;
    }
    #app-home .cate>div:last-child{
        background:#FEEEF1
    }
    #app-home .cate>div:nth-child(2)>img,
    #app-home .cate>div:last-child>img{
        height:70px;
    }
</style>