// pages/firstpage/firstpage.js
var app = getApp();
var imgArray;
Page({
  data:{
    date:"2017年1月16日"
    },
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数
    console.log("onLoad");
    this.hud = app.hudClass(this).hud;//初始化
     this.hud.show();


     var that = this;
    // 页面显示
    console.log("onShow");
    var Bmob = require('../../untils/bmob.js');
    var Diary= Bmob.Object.extend("newsIntro");
      var query = new Bmob.Query(Diary);
      // 查询所有数据
      query.limit(that.data.limit);
      query.find({
        success: function(results) {
          // 循环处理查询到的数据
          that.hud.showSuccess("加载成功"); // 成功并隐藏
            console.log(results);
          that.setData({
            diaryList:results
        
          })
        },
        error: function(error) {
           that.hud.showSuccess("加载成功"); 
          alert("查询失败: " + error.code + " " + error.message);
        }
      });

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
  //点击轮播图
  clickSwiper:function(swiper){
    var swiperID = swiper.currentTarget.id;
  var typeId = imgArray[swiperID].attributes['type'];
  if(typeId==1){
 wx.navigateTo({
      url: '../newsContent/newsContent',
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
  }else{
    wx.navigateTo({
      url: '../newsDetail/newsdetail',
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

  }

  },
  //点击新闻列表
  newsContent:function(e){
    wx.navigateTo({
      url: '../newsContent/newsContent',
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
  onReady:function(){
    // 页面渲染完成
     console.log("onRerady");
  },
  onShow:function(){
   
  },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  }
})