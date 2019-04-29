import Vue from 'vue'
import Router from 'vue-router'
import home from "./components/home"
import first from "./components/first"
import index from "./components/tabbar/index"
import found from "./components/tabbar/found"
import shop from "./components/tabbar/shop"
import message from "./components/tabbar/message"
import person from "./components/tabbar/person"
import storyList from "./components/list/storyList"
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:home},
    {path:'/home',component:home},
    {path:'/first',component:first},
    {path:'/index',component:index},
    {path:'/found',component:found},
    {path:'/shop',component:shop},
    {path:'/message',component:message},
    {path:'/person',component:person},
    {path:'/storyList',component:storyList}
  ]
})
