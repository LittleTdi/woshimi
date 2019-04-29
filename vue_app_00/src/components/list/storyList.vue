<template>
    <div class="">
        <div v-for="(item,i) of list" :key="i" data-id="i">
            <img :src="item.title_img" alt="">
            <div>
                <h4>{{item.title}}</h4>
                <button>{{item.genre}}</button>
                <button>{{item.detail}}</button>
                <div>
                    <!-- <img :src="item.slid" alt="" v-for="(item,i) of stars" :key="i"> -->
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                stars:[],
                list:[],
                listStars:[],
            }
        },
        created(){
            this.load();
            // console.log(this.listStars);
            // console.log(this.stars);
            this.getid();
        },
        methods:{
            load(){
                this.axios.get("http://127.0.0.1:3000/getStars").then(result=>{
                    this.list=result.data.data;
                    for(var i=0;i<this.list.length;i++){
                        this.listStars[i]=(this.list[i].score);
                    }
                })
            },
            getStars(score){
                var arr=[];
                var count=Math.floor(score);
                for(var i=0;i<count;i++){
                    arr[i]="img/stars/all_star.png";
                }
                if(score-count>0){
                    arr[count]="img/stars/half_star.png";
                        for(var i=count+1;i<5;i++){
                            arr[i]="img/stars/blank_star.png";
                        }
                }
                else{
                    for(var i=count;i<5;i++){
                        arr[i]="img/stars/blank_star.png";
                    }
                }
                this.stars=arr;
            },
            getid(){
                console.log(this.listStars);
                // this.listStars
            }
        }
    }
</script>
<style>
    
</style>