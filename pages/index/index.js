//在首页使用应用程序
var app = getApp();
//开启本地数据，如果使用开启线上数据，关闭这里即可
var database = require('../data/newData.js');
Page({
  data:{},
  goNavList:function(e){
    var obj = e.target.dataset;
    wx.navigateTo({
      url:'/pages/list/list?type='+ obj.type + '&nums='+obj.groupTotal
    })
  },
  onLoad: function(){
    //把数据存储到本地====演示部分，开启本地数据库
     /*****************==死数据开始==*******************/
    database = database.map(function(obj,index){
      obj['isShowCn'] = obj['isShowEn'] = "block";
      return obj;
    });
    wx.setStorageSync("database",database)
    /*****************==死数据结束==*******************/

   /*****************==线上数据开始==*******************/
    /*
    var reqURL = '接口地址';//注意要：https协议开头，微信要求
    wx.request({
      url:reqURL,
      header:{
         'content-type': 'application/json'
      },
      success: function(res) {
        console.log(res)
        if(res.statusCode == 200){
           var database = res.data.map(function(obj,index){
             obj['isShowCn'] = obj['isShowEn'] = "block";
             return obj;
           });
           wx.setStorageSync("database",database)
        }
      }
    }) */
    /*****************==线上数据结束==*******************/
  }
})