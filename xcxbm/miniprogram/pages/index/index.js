// miniprogram/pages/index/index.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    imgList:[
      "http://i1.fuimg.com/692674/76f1519c5509a244.jpg",
      "http://i1.fuimg.com/692674/5c9347e1a27df6e3.jpg",
      "http://i1.fuimg.com/692674/b6df7e19af783538.jpg",
      "http://i1.fuimg.com/692674/3332c7e763ee6954.jpg",
      "http://i1.fuimg.com/692674/d0d6301afe8fd06d.jpg",
      "http://i1.fuimg.com/692674/57eb71b435d6f68e.jpg",
      "http://i1.fuimg.com/692674/44360c1607986df1.png",
      "http://i1.fuimg.com/692674/a85b6d3d79ab9715.png",
      "http://i1.fuimg.com/692674/4c7737bab7ebd885.png",
      "http://i1.fuimg.com/692674/116ec8da5b885aa6.png",
      "http://i1.fuimg.com/692674/34f9fb4aec438688.jpg",
      "http://i1.fuimg.com/692674/9794dd410f0af03e.jpg",
      "http://i1.fuimg.com/692674/fff2e22d44747afb.jpg",    
      "http://i1.fuimg.com/692674/3a0c7df85ab6b7c6.jpg",
      "http://i1.fuimg.com/692674/728a83a33a7e207c.jpg",
      "http://i1.fuimg.com/692674/6c406c1f89610fb7.jpg",
      "http://i1.fuimg.com/692674/df7d161224dcae29.jpg",
    ]
  },
  onSearch(e) {//点击跳转搜索页
    let pname = e.detail;
    console.log(pname)
      wx.navigateTo({
        url: '/pages/prolist/prolist?pname=' + pname,
      })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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