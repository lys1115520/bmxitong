// pages/cart/cart.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    cartlist:[],//购物车的商品对象
    selectlist:[],//选中的商品对象
    total:0,
   checkall:false,
    result:[],//选中项的下标
    edit:true
  },
  loadcar(){//加载购物车
    var cartlist = wx.getStorageSync('cart');
    this.setData({
      cartlist:cartlist, 
    })
    //console.log(cartlist)
  },
  onChange(event) {//全选按钮
    this.setData({
      checkall: event.detail
    });
    if (!event.detail){
      this.setData({
        result:[],
        selectlist:[]
      });
    }else{
      var cartlist = this.data.cartlist;
      var result=[];
      for (var i = 0; i<cartlist.length; i++){
        result[i]=i+""
      }
      this.setData({
        result: result,
        selectlist: cartlist
      });
    }
    this.totalprice();//计算总价
    //console.log(this.data.selectlist)
  },
  onselect(e) {//单选按钮cartlist
    this.setData({
      result: e.detail
    });
     var result = this.data.result;
     var selectlist = [];
     var cartlist = this.data.cartlist;
     for(var i=0;i<result.length;i++){
       var index=result[i];
       //console.log(index)
       selectlist[i]=cartlist[index]
     }
     this.setData({
       selectlist: selectlist
     });
    console.log(this.data.selectlist)
    if (result.length == cartlist.length){
      this.setData({
        checkall: true
      });
    }else{
      this.setData({
        checkall: false
      });
    }
    this.totalprice()//计算总价
  },
  totalprice(){//计算总价
    var total=0;
    var selectlist = this.data.selectlist;
    for (var i = 0; i < selectlist.length;i++){
      total += selectlist[i].price * selectlist[i].lcount*100
    }
    this.setData({
      total: total
    });
    //console.log(total)
  },
  editcart(){
    this.setData({
      edit: !this.data.edit
    });
    this.totalprice()
  },
  countChange(e){//改变数量
    var newcount = e.detail
    var pid = e.target.dataset.pid
    var cartlist = this.data.cartlist
    for(var i=0;i<cartlist.length;i++){
      if(pid==cartlist[i].pid){
        cartlist[i].lcount = newcount
        //console.log(cartlist[i])
        this.setData({
          cartlist: cartlist
        });
        wx.setStorageSync('cart', cartlist)
        return
      }
    }
  },
  delpro(){//删除商品功能
    
    var _that=this;
    wx.showModal({
      title: '提示',
      
      content: '确认删除吗',
      success: function (res) {
        if (res.confirm) {//这里是点击了确定以后
          var selectlist = _that.data.selectlist;
          //console.log(selectlist)
          var cartlist = _that.data.cartlist;
          let restlist = cartlist.filter(item => !selectlist.some(ele => ele.pid === item.pid));
          console.log(restlist)
          _that.setData({
            cartlist: restlist,
            selectlist: []
          });
          wx.setStorageSync('cart', restlist)
        } else {//这里是点击了取消以后

          console.log('用户点击取消')

        }

      }

    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
    this.loadcar();
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
    this.loadcar();
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