
//引入vuex  公共的数据和状态
import Vue from 'vue'
import 'es6-promise/auto'
import Vuex from 'vuex'
Vue.use(Vuex);

const store=new Vuex.Store({
    state:{//共有的数据  购物车的数量初始为1 登录状态
      lcount:1,
      uid:"",
    },
    mutations:{//修改共有数据的方法  this.$store.commit("修改数据方法名")
      add(state){
        state.lcount++;
      },
      reduce(state){
        state.lcount--;
      },
      setuid(state,uid){
        state.uid=uid;
      },

    },
    getters:{//获取数据的方法   {{$store.getter.获取数据方法名}}
    getlcount(state){
      return state.lcount;
    },
    getuid(state){
      return state.uid;
    }
  }

});

export default store;
