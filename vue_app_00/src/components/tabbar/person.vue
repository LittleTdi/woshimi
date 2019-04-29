<template>
    <div>
        <h3>个人</h3>
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
            this.$store.state.num=5;
            this.num=this.$store.state.num;
        }
    }
</script>
<style>

</style>