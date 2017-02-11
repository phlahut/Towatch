// pages/newsContent/newsContent.js
var app = getApp();
Page({
  data:{},
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数
     console.log("页面初始化 options为页面跳转所带来的参数");
     this.hud = app.hudClass(this).hud;//初始化
	   this.hud.show(); // 默认显示加载，需主动调用隐藏hide();
    var that = this;
   var Bmob = require('../../untils/bmob.js');
    var Diary= Bmob.Object.extend("newContents");
      var query = new Bmob.Query(Diary);
      // 查询所有数据
       console.log("onShow");
      query.limit(that.data.limit);
      query.find({
        success: function(results) {
          // 循环处理查询到的数据
            console.log(results);
              that.hud.showSuccess("加载成功");
          that.setData({
            contents:results[0]
          
        
          })
        },
        error: function(error) {
         console.log("数据查询失败");
          that.hud.showSuccess("加载成功");
        }
      });
  },
  onReady:function(){
    // 页面渲染完成
     console.log("页面渲染完成");
  },
  onShow:function(){
    // 页面显示
  },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  }
})