// pages/newsDetail/newsdetail.js
var imgArray;
Page({
  data:{},
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数

//贵阳某地的经纬度   根据经纬度获取当地天气情况
    var that  = this;
    // 经度
    var lon = 106.6497233969726;
    //纬度
    var lat = 26.651496629486818;

    wx.request({
      // API只能测试50次
      url: 'http://apis.haoservice.com/weather/geo',
      data: {"lon":lon,
          "lat":lat,
          "key":"7a73bdc4cba04bfbade69790c29a5f33"},
      method: 'GET', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
      header: {}, // 设置请求的 header
      success: function(res){
        console.log(res);
        var temperature = res.data.result.today["temperature"]+"℃";
       
        var weather = res.data.result.today["weather"];
        var wind = res.data.result.today["wind"];
        that.setData({
          todayWether:temperature+"(今日)"+weather+"\n"+wind})
      },
      fail: function() {
        // fail
      },
      complete: function() {
        // complete
      }
    });
     var Bmob = require('../../untils/bmob.js');
     var Diary1= Bmob.Object.extend("Banners");
       var query1 = new Bmob.Query(Diary1);
      // 查询所有数据
      query1.limit(that.data.limit);
      query1.find({
        success: function(results) {
          // 循环处理查询到的数据
            console.log(results);
            imgArray = results;
          that.setData({
            imgList:results
            
          })
        },
        error: function(error) {
          alert("查询失败: " + error.code + " " + error.message);
        }
      });

  },
  onReady:function(){
    // 页面渲染完成
  },
  onShow:function(){
    // 页面显示
   var that = this;
  },
  addressTab:function(){
 wx.navigateTo({
      url: '../mapView/mapView',
      success: function(res){
        // success
      },
      fail: function() {
        // fail
      },
      complete: function() {
        // complete
      }
    })
    },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  }
})