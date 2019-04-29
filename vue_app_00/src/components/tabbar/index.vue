<template>
    <div>
        <first></first>
        <home></home>
    </div>
</template>
<script>
    import first from "@/components/first.vue"
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
                home,
                first
            },
        created(){
            this.$store.state.num=1;
            this.num=this.$store.state.num;
        }
    }
</script>
<style>

</style>