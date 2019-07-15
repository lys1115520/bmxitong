// pages/type/type.js
const regeneratorRuntime = require("../../lib/runtime");//引入runtime进行同步操作
const db = wx.cloud.database();//引入云数据库
Page({

  /**
   * 页面的初始数据
   */
  data: {
    typeName:["乌龙茶","红茶","绿茶","白茶","普洱茶"],
    typelist:[],//分类后的数组
    array: [],//请求数据库所有商品的总数据
    list: [],//要渲染的分类商品
    selectindex:0,
    show:false,//控制弹框
    proplist:[],//弹出框的信息
    lcount:1,
  },

  async wechatauthorization() {
    var that = this;
    //由于需要同步获取数据，可能较慢，最好加入加载动画​
    wx.showLoading({
      title: '加载中',
    })
    //初始化云端环境​
    const db = wx.cloud.database({
      env: 'bama-66i2b'//填写自己的云端环境ID
    })
    //定义每次获取的条数​
    const MAX_LIMIT = 20;
    //先取出集合的总数
    const countResult = await db.collection('detail').count()
    const total = countResult.total
    //计算需分几次取
    const batchTimes = Math.ceil(total / MAX_LIMIT)
    // 承载所有读操作的 promise 的数组
    const arraypro = []
    //初次循环获取云端数据库的分次数的promise数组 详情选基础库2.3以上
    for (let i = 0; i < batchTimes; i++) {
      const promise = await db.collection('detail').skip(i * MAX_LIMIT).limit(MAX_LIMIT).get()
      //二次循环根据​获取的promise数组的数据长度获取全部数据push到arraypro数组中
      for (let j = 0; j < promise.data.length; j++) {
        arraypro.push(promise.data[j])
      }
    }
    // console.log(arraypro)
    //把数据传递至页面视图
    that.setData({
      array: arraypro,
    })
    wx.hideLoading()
    //console.log(this.data.array)
    this.typelist();//调用对数据进行分类函数
  },
  /**
   * 自定义函数部分
   */
  typelist(){//对所有商品数据进行分类
    let tylist=[[],[],[],[],[]];
    let alllist = this.data.array;
    for(let i=0;i<alllist.length;i++){
        if(alllist[i].egtype=="wlc"){
          tylist[0].push(alllist[i])
        } else if(alllist[i].egtype =="hc"){
          tylist[1].push(alllist[i])
           tylist[2].push(alllist[i])
        } else if (alllist[i].egtype == "bc") {
          tylist[3].push(alllist[i])
        } else if (alllist[i].egtype == "pec") {
          tylist[4].push(alllist[i])
        }
    }
    this.setData({
      typelist: tylist
    });
    var typelist = this.data.typelist;//初始化状态显示第一个
    this.setData({
      list: typelist[0]
    })
  },
  select(e){//选择不同的类 事件委托
    var index=e.target.dataset.index;//获取点击事件的下标
    var typelist = this.data.typelist;
    if(index!=undefined){
      this.setData({
        list: typelist[index],//让不同的列表项显示
        selectindex: index,
      })
      console.log(this.data.list)
      //console.log(e.target)
    }    
  },
  todetail(e){//点击跳转详情页
    var pid = e.target.dataset.pid;
    console.log(pid)
    wx.navigateTo({
      url: '/pages/prodetail/prodetail?pid=' + pid,
    })
  },
  addcartprop(e){//点击加入购物车弹框
    var index = e.currentTarget.dataset.index;
    this.setData({ 
      show: true,
      proplist:this.data.list[index] 
      });
    console.log(this.data.proplist)
  },
  onClose() {//关闭弹框
    this.setData({ show: false });
  },
  onChange(e){//获取数量加减
    this.setData({
      lcount: e.detail
    })
    console.log(this.data.lcount)
  },
  addcart(){//点击加入购物车
    var newcarinfo={};
    newcarinfo.pid=this.data.proplist.pid;
    newcarinfo.title = this.data.proplist.title;
    newcarinfo.price = this.data.proplist.price;
    newcarinfo.smpic = this.data.proplist.smpic;
    newcarinfo.lcount = this.data.lcount;
    console.log(newcarinfo)
    // 获取购物车的缓存数组（没有数据，则赋予一个空数组）
    var arr = wx.getStorageSync('cart') || []; 
    if (arr.length > 0) {
      // 遍历购物车数组  
      for (var j in arr) {
        // 判断购物车内的item的pid，和事件传递过来的pid，是否相等  
        if (arr[j].pid == newcarinfo.pid) {
          // 相等的话，给count+1（即再次添加入购物车，数量+1）  
          arr[j].lcount = arr[j].lcount + 1;
          // 最后，把购物车数据，存放入缓存（此处不用再给购物车数组push元素进去，因为这个是购物车有的，直接更新             当前数组即可）  
          try {
            wx.setStorageSync('cart', arr)
          } catch (e) {
            console.log(e)
          }
          //关闭窗口
          wx.showToast({
            title: '加入购物车成功！',
            icon: 'success',
            duration: 2000
          });
          // 返回（在if内使用return，跳出循环节约运算，节约性能） 
          return;
        }
      }
      // 遍历完购物车后，没有对应的item项，把goodslist的当前项放入购物车数组  
      arr.push(newcarinfo);
    } else {
      arr.push(newcarinfo);
    }

    // 最后，把购物车数据，存放入缓存  
    try {
      wx.setStorageSync('cart', arr)
      // 返回（在if内使用return，跳出循环节约运算，节约性能） 
      //关闭窗口
      wx.showToast({
        title: '加入购物车成功！',
        icon: 'success',
        duration: 2000
      });
      return;
    } catch (e) {
      console.log(e)
    }
  },
  gobuynow(){//立即购买
    this.addcart()
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //this.loadpro();
    
    this.wechatauthorization();
    
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})




/*
//本代码仅展示获取云端数据库大于20条的方法，其它功能请自行编写
Page({
  ​data: {
    array: [],
  },
  async wechatauthorization() {
    var that = this;
    //由于需要同步获取数据，可能较慢，最好加入加载动画​
    wx.showLoading({
      title: '加载中',
    })
    //初始化云端环境​
    const db = wx.cloud.database({
      env: 'test'//填写自己的云端环境ID
    })
    //定义每次获取的条数​
    const MAX_LIMIT = 20;
    //先取出集合的总数
    const countResult = await db.collection('agreement').count()
    const total = countResult.total
    //计算需分几次取
    const batchTimes = Math.ceil(total / MAX_LIMIT)
    // 承载所有读操作的 promise 的数组
    const arraypro = []
    //初次循环获取云端数据库的分次数的promise数组
    for (let i = 0; i < batchTimes; i++) {
      const promise = await db.collection('agreement').skip(i * MAX_LIMIT).limit(MAX_LIMIT).get()
      //二次循环根据​获取的promise数组的数据长度获取全部数据push到arraypro数组中
      for (let j = 0; j < promise.data.length; j++) {
        arraypro.push(promise.data[j])
      }
    }
    // console.log(arraypro)
    //把数据传递至页面视图
    that.setData({
      array: arraypro,
    })
    wx.hideLoading()
  },
})​*/