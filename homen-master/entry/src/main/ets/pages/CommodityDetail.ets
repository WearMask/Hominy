import  router  from '@ohos.router';
import CommodityDetil, { Commodity } from '../viewmodel/CommodityDetil';
import CommodityList from '../viewmodel/CommodityLisy';

//let cid:obj  = router.getParams();
const  params = router.getParams();


router.getParams()
@Entry
@Component
struct CommodityDetail {
  @State message: string = 'Hello World';
  // @State cid:number = router.getParams()['cid']
  @State cid:number = 1
  @State cmmodity:Array<CommodityDetil> = Commodity
  scroller:Scroller = new Scroller()
  build() {
    Scroll(){
      Column() {
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
        .backgroundColor(Color.Black)
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
                  Text('【人气爆棚】 12kg|深层去污，1个')
                    .fontSize(14)
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
        }
        .margin({top:15})
        .backgroundColor(Color.White)
        .borderRadius({topLeft:15,topRight:15})
        Text('cid'+this.cid)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .backgroundColor('#f0f0f0')
      .width('100%')
    }
    .scrollable(ScrollDirection.Vertical)
  }
}