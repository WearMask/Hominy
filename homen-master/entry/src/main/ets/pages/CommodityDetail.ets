import  router  from '@ohos.router';
import CommodityDetil, { Commodity } from '../viewmodel/CommodityDetil';
import CommodityList, { CommodeityLsitData } from '../viewmodel/CommodityLisy';
import UserEvaluateList, { Evaluate, UserEvaluate } from '../viewmodel/UserEvaluateList';

//let cid:obj  = router.getParams();
const  params = router.getParams();
let a: number = 5;
let b:Array<string> = [];
let i:number = 0



router.getParams()
@Entry
@Component
struct CommodityDetail {
  @State message: string = 'Hello World';
  @State cid:number = router.getParams()['cid']
  @State op:number = 0
  @State tabClick:number = 0
  //@State cid:number = 1
  @State cmmodity:Array<CommodityDetil> = Commodity
  @State userEvaluateList: Array<Evaluate|number> = UserEvaluate
  scroller:Scroller = new Scroller()
  build() {
    Stack({alignContent:Alignment.TopStart}){
      Row(){
        Row({space:10}){
          Text('x')
            .fontColor('#F0F0F0')
          Image($r('app.media.ad0294917f47e6b8'))
            .width(25)
        }
        .padding({left:10,top:5,bottom:5})
        Text('打开京东APP，实惠又轻松')
          .fontColor('#f0f0f0')
          .fontSize(14)
        Button({type:ButtonType.Normal}){
          Text('立即打开')
            .fontColor(Color.White)
            .fontSize(14)
        }
        .width(120)
        .height(40)
        .backgroundColor(Color.Red)

      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .zIndex(1)
      .backgroundColor(Color.Black)
      Row(){
        Stack(){
          Row(){
            Button(){
              Text('<')
                .fontColor(Color.White)
            }
            .onClick(()=>{
              router.back()
            })
            .width(40)
            .height(40)
            .backgroundColor(Color.Black)
            .borderRadius(100)
            Button(){
              Text('...')
                .fontColor(Color.White)
            }
            .width(40)
            .height(40)
            .backgroundColor(Color.Black)
            .borderRadius(100)
          }.width('100%')
          .padding(10)
          .justifyContent(FlexAlign.SpaceBetween)
          Row(){
            Text('<')
              .fontColor(Color.Black)
              .onClick(()=>{
                router.back()
              })
            Row(){
              Text('商品')
                .fontWeight( this.tabClick == 0 ? FontWeight.Bold : FontWeight.Medium)
                .onClick(()=>{
                  this.tabClick = 0
                })
                .border({
                  style:{bottom:BorderStyle.Solid},
                  width:{bottom:this.tabClick == 0 ?2:0},
                  color:{bottom:Color.Red}
                })
                .height('100%')
              Text('评价')
                .fontWeight( this.tabClick == 1 ? FontWeight.Bold : FontWeight.Medium)
                .onClick(()=>{
                  this.tabClick = 1
                })
                .height('100%')
                .border({
                  style:{bottom:BorderStyle.Solid},
                  width:{bottom:this.tabClick == 1 ?2:0},
                  color:{bottom:Color.Red}
                })
              Text('详情')
                .fontWeight( this.tabClick == 2 ? FontWeight.Bold : FontWeight.Medium)
                .onClick(()=>{
                  this.tabClick = 2
                })
                .height('100%')
                .border({
                  style:{bottom:BorderStyle.Solid},
                  width:{bottom:this.tabClick == 2 ?2:0},
                  color:{bottom:Color.Red}
                })
            }
            .justifyContent(FlexAlign.SpaceAround)
            .width('70%')
            Text('...')
              .fontColor(Color.Black)
          }
          .opacity(this.op)
          .height(55)
          .justifyContent(FlexAlign.SpaceAround)
          .padding(10)
          .width('100%')
          .backgroundColor(Color.White)
        }

      }
      .margin({top:35})
      .zIndex(1)
      .width('100%')
      Stack({alignContent:Alignment.BottomStart}){

        Scroll(this.scroller){
          Column() {
            Column(){
              ForEach(this.cmmodity,(item:CommodityDetil)=>{
                if(item.cid == this.cid){
                  Image(item.image)
                    .width('100%')
                    .aspectRatio(1)
                  Column(){
                    Row(){
                      Text(){
                        Span('￥')
                        Span(''+item.price)
                          .fontSize(30)
                          .fontWeight(500)
                      }
                      .fontColor(Color.Red)
                    }
                    .width('100%')
                    Row({space:5}){
                      Text('京东超市')
                        .fontSize(10)
                        .fontColor(Color.White)
                        .borderRadius(2)
                        .backgroundColor(Color.Green)
                      Text('就是便宜')
                        .fontSize(10)
                    }
                    .margin({top:20})
                    .width('100%')
                    Row({space:5}){
                      Text('自营')
                        .fontSize(10)
                        .backgroundColor(Color.Red)
                        .fontColor(Color.White)
                        .margin({top:-20})
                      Text(item.name)
                        .fontWeight(FontWeight.Bold)
                        .lineHeight(25)
                        .textIndent(40)
                        .layoutWeight(1)
                        .margin({left:-35})
                        .maxLines(2)
                        .textOverflow({overflow:TextOverflow.Ellipsis})
                    }
                    .padding({left:10})
                    .width("100%")
                    Row(){
                      Row(){
                        Image('https://img10.360buyimg.com/img/jfs/t1/20724/31/20118/5100/6386d180Ef7435661/b73a0d4e3f653a22.png')
                          .width(64)
                        Text('去酒渍箱装洗衣液热卖榜第3名')
                          .fontSize(12)
                          .fontColor(Color.Red)
                      }
                      Image('https://m.360buyimg.com/rank/jfs/t1/206038/6/18674/1888/61bc390aE2a46f19b/321efee30a5a8e65.png/')
                        .width(18)
                    }
                    .justifyContent(FlexAlign.SpaceBetween)
                    .backgroundColor('#78e88484')
                    .width('100%')
                    .borderRadius(50)
                    .padding({right:3})
                    .margin({top:10})
                    Row(){
                      Row(){
                        Image('https://img11.360buyimg.com/img/jfs/t1/185923/19/38125/325/64fad71dFeef526f9/f11f072077880807.png')
                          .width(16)
                        Text('分享')
                          .fontSize(14)
                          .fontColor(Color.Gray)
                      }
                      Row(){
                        Image('https://img10.360buyimg.com/img/jfs/t1/102190/6/45012/397/64fad71dF756823e2/d39f976bcb0a7e1f.png')
                          .width(16)
                        Text('收藏')
                          .fontSize(14)
                          .fontColor(Color.Gray)

                      }
                      Row(){
                        Image('https://img11.360buyimg.com/img/jfs/t1/143406/40/38936/332/64fad71dF85fe799a/be862fbe6f0efb0d.png')
                          .width(16)
                        Text('降价通知')
                          .fontSize(14)
                          .fontColor(Color.Gray)
                      }
                    }
                    .margin({top:20})
                    .width('100%')
                    .justifyContent(FlexAlign.SpaceAround)
                  }
                  .padding(15)
                  // .width('100%')
                }
              })
            }
            .backgroundColor(Color.White)
            .borderRadius({bottomLeft:15,bottomRight:15})
            Column(){
              Row(){
                Row(){
                  Row(){
                    Text('已选')
                      .fontWeight(FontWeight.Bold)
                    ForEach(this.cmmodity,(item:CommodityDetil)=>{
                      if(item.cid == this.cid){
                        ForEach(item.color,(i:string,index:number)=>{
                          if(index === 0){
                            Text(i)
                              .fontSize(14)
                          }
                        })
                      }
                    })
                  }
                  Row(){
                    Text(){
                      Span('. ')
                      Span('.')
                        .fontWeight(900)
                      Span(' .')
                    }
                  }
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
                .padding({left:10,right:10,top:20,bottom:20})
              }
              .width('100%')
              .border({
                style:{bottom:BorderStyle.Solid},
                width:{bottom:1},
                color:'#f0f0f0'
              })
              Row(){
                Row(){
                  Text("送至")
                    .fontWeight(FontWeight.Bold)
                    .margin({top:-40})
                  Column({space:5}){
                    Row({space:90}){
                      Text('北京朝阳区三环到四环之间')
                        .fontSize(14)
                      //.width('100%')
                      Row(){
                        Text(){
                          Span('. ')
                          Span('.')
                            .fontWeight(900)
                          Span(' .')
                        }
                      }

                    }
                    //.justifyContent(FlexAlign.SpaceBetween)
                    Row(){
                      Text("京东物流")
                        .fontColor(Color.Red)
                        .backgroundColor(Color.Pink)
                        .margin({right:10,top:-10})
                      Text(){
                        Span('采购中')
                          .fontColor(Color.Red)
                        Span('预计2024-06-11日后有货，现在可以下单')
                      }
                      .fontSize(14)
                      .layoutWeight(1)
                      .maxLines(2)
                      .width('80%')
                    }
                    .margin({left:-35})

                  }
                }

              }
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
              .padding(10)
              .border({
                style:{bottom:BorderStyle.Solid},
                color:{bottom:'#f0f0f0'},
                width:{bottom:1}
              })
              Row({space:10}){
                Text('重量')
                  .fontWeight(FontWeight.Bold)
                Text('1kg')
              }
              .width('100%')
              .padding(10)
              .border({
                style:{bottom:BorderStyle.Solid},
                width:{bottom:1},
                color:{bottom:'#f0f0f0'}
              })
              Row({space:10}){
                Text('活动')
                  .fontWeight(FontWeight.Bold)
                Row(){
                  Text('京东超市卡')
                    .fontSize(14)
                    .fontColor(Color.Green)
                      //.backgroundColor()
                    .backgroundColor('#ffc7ebc4')
                  Text('冲多送多，最高不止97折，叠加劵价京豆超优惠➡️')
                    .fontSize(14)
                    .maxLines(1)
                    .textOverflow({overflow:TextOverflow.Ellipsis})
                    .width('58%')
                    .margin({right:5,left:10})
                  Row(){
                    Text(){
                      Span('. ')
                      Span('.')
                        .fontWeight(900)
                      Span(' .')
                    }
                  }
                }
              }
              .justifyContent(FlexAlign.SpaceAround)
              .width('100%')
              .padding(10)
              .border({
                style:{bottom:BorderStyle.Solid},
                width:{bottom:1},
                color:{bottom:'#f0f0f0'}
              })
            }
            .margin({top:15})
            .backgroundColor(Color.White)
            .borderRadius({topLeft:15,topRight:15})
            Column({space:5}){
              Row({space:10}){
                Row(){
                  Row({space:10}){
                    Row()
                      .width(11)
                      .height(11)
                      .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                      .backgroundImagePosition({x:-80,y:0})
                    Text('59元免基础运费')
                      .fontSize(14)
                      .fontColor(Color.Gray)
                  }
                  Row({space:10}){
                    Row()
                      .width(11)
                      .height(11)
                      .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                      .backgroundImagePosition({x:-80,y:0})
                    Text('7天无理由退款')
                      .fontSize(14)
                      .fontColor(Color.Gray)
                  }
                }
                Row(){
                  Text(){
                    Span('. ')
                    Span('.')
                      .fontWeight(900)
                    Span(' .')
                  }
                }

              }
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
              Row({space:10}){
                Row({space:10}){
                  Row()
                    .width(11)
                    .height(11)
                    .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                    .backgroundImagePosition({x:-80,y:0})
                  Text('京东发货&商家售后')
                    .fontSize(14)
                    .fontColor(Color.Gray)
                }
                Row({space:10}){
                  Row()
                    .width(11)
                    .height(11)
                    .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                    .backgroundImagePosition({x:-80,y:0})
                  Text('30天保价')
                    .fontSize(14)
                    .fontColor(Color.Gray)
                }
                Row({space:10}){
                  Row()
                    .width(11)
                    .height(11)
                    .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                    .backgroundImagePosition({x:-80,y:0})
                  Text('破损包退换')
                    .fontSize(14)
                    .fontColor(Color.Gray)
                }
              }
              .width('100%')
              Row({space:10}){
                Row({space:10}){
                  Row()
                    .width(11)
                    .height(11)
                    .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                    .backgroundImagePosition({x:-80,y:0})
                  Text('部分收货')
                    .fontSize(14)
                    .fontColor(Color.Gray)
                }
                Row({space:10}){
                  Row()
                    .width(11)
                    .height(11)
                    .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                    .backgroundImagePosition({x:-80,y:0})
                  Text('送货上门')
                    .fontSize(14)
                    .fontColor(Color.Gray)
                }
                Row({space:10}){
                  Row()
                    .width(11)
                    .height(11)
                    .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
                    .backgroundImagePosition({x:-80,y:0})
                  Text('自提...')
                    .fontSize(14)
                    .fontColor(Color.Gray)
                }
              }
              .width('100%')
            }
            .width('100%')
            .padding({top:10,bottom:10,left:15,right:15})
            Column({space:15}){
              Row(){
                Row({space:10}){
                  Row(){}
                  .linearGradient({
                    angle:180,
                    colors:[[Color.Red,1],[Color.White,0.5],[Color.White,0]]
                  })
                  .width(5)
                  .height(16)
                  Text('评价')
                    .fontWeight(FontWeight.Bold)

                  Text('2w+')
                    .fontWeight(FontWeight.Bold)
                }
                Row({space:10}){
                  ForEach(this.cmmodity,(item:CommodityDetil)=>{
                    if(item.cid === this.cid){
                      Text(`好评率${item.haopin}`)
                        .fontSize(14)
                    }
                  })
                  Text('>')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(14)
                }
              }.justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
              Flex({wrap:FlexWrap.Wrap}){
                ForEach(this.cmmodity,(item:CommodityDetil)=>{
                  if(item.cid == this.cid){
                    ForEach(item.tag,(i:string)=>{
                      Text(i)
                        .backgroundColor(Color.Pink)
                        .fontWeight(400)
                        .padding(5)
                        .borderRadius(20)
                        .margin({right:5,bottom:5})
                    })
                  }
                })
              }
              Column(){
                ForEach(this.userEvaluateList,(item:number|Array<UserEvaluateList>)=>{
                  if(item['cid'] == this.cid ){
                    ForEach(item['evaluate'],(i:UserEvaluateList)=>{
                      Column({space:10}){
                        Row(){
                          Image(i.avater)
                            .width(30)
                            .borderRadius(15)
                          Text(i.username)
                            .margin({left:10})
                            .layoutWeight(1)
                          Text("2024-06-09")
                            .fontColor(Color.Gray)
                            .fontSize(14)
                        }
                        .width('100%')
                        Text(i.evaluate)
                          .maxLines(3)
                          .fontSize(14)
                          .textOverflow({overflow:TextOverflow.Ellipsis})
                        Row(){
                          ForEach(i.image,(y:string)=>{
                            Image(y)
                              .width(80)
                              .borderRadius(20)
                          })
                        }
                        .width('100%')
                      }
                      .padding({bottom:10})
                      .border({
                        style:{bottom:BorderStyle.Solid},
                        width:{bottom:1},
                        color:'#f0f0f0'
                      })
                    })

                  }
                })
              }
            }
            .width('100%')
            .backgroundColor(Color.White)
            .borderRadius({topLeft:10,topRight:10})
            .padding(15)
            Text('cid'+this.cid)
              .fontSize(50)
              .fontWeight(FontWeight.Bold)
          }
          .margin({top:40})
          .backgroundColor('#f0f0f0')
          .width('100%')
        }
        .scrollable(ScrollDirection.Vertical)
        .onScroll((event) => {
          this.op = this.scroller.currentOffset().yOffset / 100
          if(this.op>1) this.op = 1
          console.info('',this.scroller.currentOffset().yOffset)
        })
        Row(){
          Column({space:15}){
            Row()
              .width(20)
              .height(20)
              .scale({x:1.7,y:1.7})
              .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
              .backgroundImagePosition({x:10,y:-80})
            Text('店铺')
          }
          Column({space:15}){
            Row()
              .width(20)
              .height(20)
              .scale({x:1.9,y:1.9})
              .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
              .backgroundImagePosition({x:-270,y:-27})
            Text('客服')
          }
          Column({space:15}){
            Row()
              .width(20)
              .height(20)
              .scale({x:1.7,y:1.7})
              .backgroundImage('https://img20.360buyimg.com/img/jfs/t1/168610/10/40795/8056/64eedda4F1aed004e/a8502bb8121e0c68.png')
              .backgroundImagePosition({x:-430,y:-30})
            Text('购物车')
          }
          Button('加入购物车')
            .width(100)
            .backgroundColor(Color.Red)
          Button('立即购买')
            .width(100)
            .backgroundColor(Color.Yellow)

        }
        .justifyContent(FlexAlign.SpaceAround)
        .width('100%')
        .backgroundColor(Color.White)
        .padding(10)
      }
    }


  }
}