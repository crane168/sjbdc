/**
*@author xiangjun
*@date 2017-05-18
***/
//获取全局的app
var app = getApp();
var util = require('../../util/util');
Page({
  data:{
    title:'卡片单词',
    showBtnTitle:'[中-英]模式',
    isMod: 0,//0表示中英文都显示， 1表示显示英文，隐藏中文,2表示影藏英文，显示中文
    list_words:[]
  },
  //抽出来
  switchEnCn: function(e, who){
    var id = e.currentTarget.dataset.id;
    var currentWord = null;
    var currentIndex = 0;
    var arr = this.data.list_words.map(function(obj,index){
      if(obj.id == id){
        if(obj[who] == "block"){
          obj[who] = "none";
        }else{
          obj[who] = "block";
        }
      }
      return obj;
    })
    this.setData({
      list_words: arr
    })
  },
  //显隐下一个内容
  toggleOneTap: function(e){
    if(this.data.isMod == 1 || this.data.isMod == 0){
      this.switchEnCn(e,"isShowCn");
    }else{
      this.switchEnCn(e,"isShowEn");
    }
  },
  //点击显示和隐藏英语，这个需要状态处于模式2中才起效果
  toggleOneEnTap:function(e){
    if(this.data.isMod == 2){
      this.switchEnCn(e,"isShowEn");
    }else{
      this.switchEnCn(e,"isShowCn");
    }
  },
  findWordById:function(id){
    this.data.list_words.forEach(function(obj,index){
      if(obj.id == id){
        console.log(obj)
        return {obj:obj,index:index};
      }
    })
    return {};
  },
  itemShowHandler:function(isShowEn, isShowCn){
    var arr = this.data.list_words.map(function(obj, index){
      obj['isShowCn'] = isShowCn;
      obj['isShowEn'] = isShowEn;
      return obj;
    })
    return arr;
  },
  switchCardTap: function(){
    //引入模式
    var mod = this.data.isMod;
    if(mod==0){
      //如果模式为0,下一步则是1
      //即显示英文，隐藏中文
      this.setData({
        showBtnTitle:'英文模式',
        isMod:1,
        list_words:this.itemShowHandler('block','none'),
      })
    }else if(mod == 1){
      //如果模式为1，下一步则是2
      //即显示中文，隐藏英文
      this.setData({
        isMod:2,
        list_words:this.itemShowHandler('none','block'),
        showBtnTitle:'中文模式',
      })
    }else{
      //如果模式为2，则下一步为0
      //即显示英文，显示中文
      this.setData({
        isMod: 0,
        showBtnTitle:'[中-英]模式',
        list_words:this.itemShowHandler('block','block'),
      })
    }

    // this.setData({
    //  isShowCn: this.data.isShowCn == 'block' ? 'none':'block'
    // });


    // wx.showToast({
    //   title:'功能开发中',
    //   icon: 'success',
    //   duration: 2000
    // })
  },
  nextTap:function(){
    console.log(this.data)
    var query = this.data.query;
    query.groupnum = +query.groupnum+1;
    this.setData({
      query: query
    })
    var data = this.getStorage();
    this.updateList(data, query,this.data.titleName);
  },

  startTypeCode: function(){
    wx.showModal({
      title: '提示',
      content: '高级功能，暂未实现',
      success: function(res) {
        if (res.confirm) {
           console.log('用户点击确定')
        }
      }
    })
  },
  onReachBottom:function(){
    // this.setData({
    //   list_words: this.data.list_words.concat(temp)
    // })
  },
  updateList:function(database,query,titleName){
    //过滤数据
    var dataList = [];
    database.forEach(function(obj, index){
      //具体是应该单词所属，单词归于哪张
      if(obj.type == (+query.type) && obj.groupnum == (+query.groupnum)) {
        if(obj.word_en.length > 15 && obj.word_en.length < 22){
          obj.fz18 = "fz30";
        }else if(obj.word_en.length >= 22 && obj.word_en.length < 28){
          obj.fz18 = "fz24";
        }else if(obj.word_en.length >= 28){
          obj.fz18 = "fz18";
        }

        if(obj.word_cn.length >= 22){
          obj.fzCnSize = "fz12";
        }else if(obj.word_cn.length > 18 && obj.word_cn.length < 22){
          obj.fzCnSize = "fz14";
        }else if(obj.word_cn.length > 12 && obj.word_cn.length <= 18){
          obj.fzCnSize = "fz18";
        }else if(obj.word_cn.length >= 10 && obj.word_cn.length <= 12){
          obj.fzCnSize = "fz22";
        }

        dataList.push(obj);
      }
    })

    wx.setNavigationBarTitle({
      title: titleName + '-第' + query.groupnum + '张-' + dataList.length +'个单词'
    });
    this.setData({
      query: query,
      list_words: dataList
    });

    if(dataList.length === 0){
      setTimeout(function(){
        query.groupnum = 1;
        //this.updateList(database,query,titleName);
        wx.showModal({
        title: '提示',
        content: titleName+'，点击 [确定]，将前往有单词章节。',
        success: function(res) {
          if (res.confirm) {
            this.updateList(database,query,titleName);
          }
        }.bind(this)
        })
      }.bind(this),2000)
    }

  },
  getStorage:function(){
    try {
      var data = wx.getStorageSync('database')
      if (data) {
          // Do something with return value
          return data;
      }
    } catch (e) {
      // Do something when catch error
    }
    
  },
  onLoad: function(query){
    //Object {type: "3", groupnum: "3"}
    var titleName = app.globalData.typeMap[query.type];
    this.setData({
      query: query,
      titleName:titleName
    })

  

  /*****************==死数据开始==*******************/
   var data = this.getStorage();
   this.updateList(data,query,titleName);
  }
})