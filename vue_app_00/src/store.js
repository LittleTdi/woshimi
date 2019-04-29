import Vue from 'vue'
import Vuex from '../node_modules/vuex'

Vue.use(Vuex);

const store = new Vuex.Store({
    //存储组件数据
    state:{
       num:1,
    },
    //修改数据函数
    mutations:{

    },
    //获取数据函数
    getters:{

    }
})
export default store;