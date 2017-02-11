// var util = require('../../utils/util.js')
Page({
  data: {
    navTab: ["斗牛", "篮球", "芦笙","其它"],
      items: ["斗牛", "篮球", "芦笙","其它","斗牛", "篮球", "芦笙","其它","斗牛", "篮球", "芦笙","其它"],
    currentNavtab: "0",
    scrollTop:120,
    toView:11
  },
  onLoad: function () {

  },
  switchTab: function(e){
    this.setData({
      currentNavtab: e.currentTarget.dataset.idx
    });
  },
  clickCell:function(cell){
console.log( cell.currentTarget.dataset.idx);
 console.log("upper");
  wx.navigateTo({
            url: "../newsDetail/newsdetail"
          })
  }
})
