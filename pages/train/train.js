Page({
    data:{
      topic: {
          id: "2",
          times: "第二天",
          type: "3",
          type_name: "英语词组",
          start_time: "22：30",
          word_num: "20",
          train_day: "2017-05-18 ",
          group_num: "1",
          current: "1",
          btn_apply_for_name: "申请加入特训群",
          apply_for_content: "加qq号：2890594972",
          appy_for_show: "1"
        }
    },
    applyForTap:function(){
      var applyForInfo = this.data.topic.apply_for_content
      wx.showModal({
        title: '申请加入信息',
        content: applyForInfo,
        success: function(res) {}
      })
    },
    onLoad:function(){
      /*****************==线上Topic数据开始==*******************/
      /*
      var reqURL = '接口地址';//注意要：https协议开头，微信要求
      var me = this;
      把数据存储到本地
      wx.request({
        url: reqURL,
        header:{
          'content-type': 'application/json'
        },
        success: function(res) {
          if(res.statusCode == 200){
            console.log(res)
            me.setData({
                topic : res.data[0]
            })
          }
        }
      })
      */
      /*****************==线上Topic数据结束==*******************/
    },
    gotoPreviewTrainTap: function(e){
      var obj = this.data.topic;
      wx.navigateTo({
        url:'/pages/card/card?type='+ obj.type + '&groupnum='+obj.group_num
      })
    }
})