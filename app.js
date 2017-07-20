/**
*@author xiangjun
*@date 2017-05-18
***/
App({
    //定义启动方法
    onLaunch: function(){
        var me = this;
        //获取用户信息
        wx.getUserInfo({
          success: function(res){
              console.log('user info', arguments, this)
            // success
            //获取的信息要让Index页面使用
            me.globalData.userInfo = res.userInfo;
          },
          fail: function() {
            // fail
          },
          complete: function() {
            // complete
          }
        })

    },
    //从后台进入前台
    onShow: function(){
        console.log("show", arguments, this)
    },
    //从前台进入后台
    onHide: function(){
        console.log("hide", arguments, this)
    },
    //出现问题
    onError: function(){
        console.log("error", arguments, this)
    },
    //定义一些数据
    globalData: {
        title:"逻辑英语",
        typeMap:{
            1: '英语基础词汇',
            2: '英语核心词汇',
            3: '英语词组',
            4: '英语高难词汇',
            5: '英语易混词汇'
        }
    }
})