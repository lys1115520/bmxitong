// pages/prolist/prolist.js
const db = wx.cloud.database();//引入云数据库
Page({

  /**
   * 页面的初始数据
   */
  data: {
    seachlist:[],//保存搜索结果
    pname:'',//传过来的值
    show: false,//控制弹框
    proplist: [],//弹出框的信息
    lcount: 1,
    value:''
  },
  onSearch(e){//搜索产品
    console.log(this.data.value)
    console.log(e)
    console.log(e.currentTarget)
  },
  toSearch(){//模糊搜索
    var pname=this.data.pname;
    var that = this
    db.collection('detail').where({
      //使用正则查询，实现对搜索的模糊查询
      // uname是你要查询的字段
      pname: db.RegExp({
        regexp: pname,
        //从搜索栏中传来的value作为规则进行匹配。
      })
    }).get({
      success: res => {
        console.log(res)
         that.setData({
           seachlist: res.data
         })
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({
      pname: options.pname
    })
    console.log(options)
    this.toSearch();
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