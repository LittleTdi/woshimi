<template>
    <div>
        <h3>消息</h3>
        <home></home>
        
    </div>
</template>
<script>
    import home from "@/components/home.vue"
    export default{
        data(){
            return{
                num:''
            }
        },
        created(){
            
        },
        components:{
                home
            },
        created(){
            this.$store.state.num=4;
            this.num=this.$store.state.num;
        }
    }
</script>
<style>

</style>