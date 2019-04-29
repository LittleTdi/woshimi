<template>
    <div id="app-home">
        <nav class="mui-bar mui-bar-tab">
			<router-link class="mui-tab-item" to="/index" :class="num==1? 'mui-active':''">
				<img :src="num==1? src1s[0]:src2s[0]" alt="">
				<span class="mui-tab-label">首页</span>
			</router-link>	
			<router-link class="mui-tab-item" to="/found" :class="num==2? 'mui-active':''">
				<img :src="num==2? src1s[1]:src2s[1]" alt="">
				<span class="mui-tab-label">发现</span>
			</router-link>
			<router-link class="mui-tab-item" to="/shop" :class="num==3? 'mui-active':''">
				<span>
					<img :src="num==3? src1s[2]:src2s[2]" alt="">
					<span class="mui-badge">9</span>
				</span>
				<span class="mui-tab-label">商城</span>
			</router-link>
			<router-link class="mui-tab-item" to="/message" :class="num==4? 'mui-active':''">
				<img :src="num==4? src1s[3]:src2s[3]" alt="">
				<span class="mui-tab-label">消息</span>
			</router-link>
            <router-link class="mui-tab-item" to="/person" :class="num==5? 'mui-active':''">
				<img :src="num==5? src1s[4]:src2s[4]" alt="">
				<span class="mui-tab-label">个人</span>
			</router-link>
		</nav>
    </div>
</template>
<script>
export default {
    data(){
      return{
		icon:[],
		src1s:['img/index-active.svg','img/find-active.svg','img/cart-active.svg','img/message-active.svg','img/person-active.svg'],
		src2s:['img/index.svg','img/find.svg','img/cart.svg','img/message.svg','img/person.svg'],
		num:''
		}
	},
	created() {
		//this.$store.state.num=1;
		this.num=this.$store.state.num;
	},
}
</script>
<style>
	img{
		width:30%;
		display:block;
		position:relative;
		left:35%;
	}
	
	img+span,nav.mui-bar>a:nth-child(3)>span{
		font-size:8px;
	}
	nav.mui-bar>a{
		text-align:center;
		position:relative;
	}
	nav.mui-bar>a:nth-child(3)>span:first-child>span.mui-badge{
		font-size: 10px;
		line-height: 1.4;
		position: absolute;
		top: -2px;
		left: 70%;
		margin-left: -10px;
		padding: 1px 5px;
		color: white;
		background: red;
	}
</style>