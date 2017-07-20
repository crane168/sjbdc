var app = getApp();

Page({
  data:{
    modelName: '',
    list:[],
  },
  goCardTap:function(e){
    var obj = e.target.dataset;
    wx.navigateTo({
      url:'/pages/card/card?type='+ obj.type + '&groupnum='+obj.groupNum
    })
  },
  onLoad: function(queryObj){
    var type = queryObj.type;
    console.log(queryObj)
    //获取字典中的名称
    var typeWrodName = app.globalData.typeMap[type];
    //设置标题
    wx.setNavigationBarTitle({
      title: typeWrodName+' ' + queryObj.nums +'张' 
    })
    //获取内容张数
    var nums = +queryObj.nums;
    //创建张数数组
    var list = new Array(nums);
    //填充张数内容
    var result = list.fill(typeWrodName)
    //组合内容
    .map(function(value,index){
      index++;
      return {
        orderNum: index,
        type: type,
        name: value,
        wordNum: 20
      };
    })

    this.setData({
      modelName:　typeWrodName,
      list: result
    }); 


  }
})