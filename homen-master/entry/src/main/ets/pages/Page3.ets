import CommodityList, { CommodeityLsitData } from '../viewmodel/CommodityLisy'
import  router  from '@ohos.router';

@Component
 struct  tabs{
    @Link open:boolean
    @Link click:number
    @Link item:string
    //@Link open:boolean
   //@State bg:Resource = Array<null>
  build() {
    Stack(){
      if(this.click>1){
        //Image(this.bg[this.click-1])
        //.margin({top:-13})
      }
      Text(this.item)
        .fontSize(14)
    }
    .onClick((v)=>{
      this.click = 2
      console.info('2222',JSON.stringify(v))
    })
    // .backgroundColor(Color.White)
    .width(140)
    .height('100%')
    // .borderRadius(15)
    .padding(5)
    .margin({bottom:-10})
  }
}

class time{
  public date:Date = new Date()

}


@Entry
@Component
struct Page3 {
  @State arr:Array<string>  = ['刮刮红包','抢金龙鱼','高考文具','领消费卷','限定红包','转赚红包','打牌奥莱','低价捡漏','欢乐淘金']
  @State bg:Array<Resource> = [$r('app.media.ic_bg'),$r('app.media.ic_btnBg')]
  @State arr2:Array<string> = ['10:00','12:00','14:00','16:00','18:00','20:00','22:00','00:00']
  @State arr3:Array<string> = ['https://m.360buyimg.com/mobile/s200x64_jfs/t1/172084/31/46726/11001/66596702F2b1c5b3d/9502196b66f37965.png','https://m.360buyimg.com/mobile/s200x64_jfs/t1/188652/18/46203/11346/66596795Fe226ce17/9a2000a5c946a4ff.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/222638/30/41887/10969/66596780Fef975ee9/097051649059a64b.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/245804/35/10437/10255/665fc4a2Fec624279/4981dabdb3b5570b.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/184432/31/47119/11318/665967c9F718c28c0/f49bac433561a71e.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/177094/32/46600/8537/6659673eFc002ab86/eaff5c2e7210d09e.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/246546/6/10053/11570/665d8bb4Ff5e81b11/de1928a337a6dba4.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/162854/10/46821/10005/665967e8Feb7db775/ae5c19858186fb33.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/240294/33/10401/12864/66596759Fc686b6e6/71328d803276de35.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/204028/3/44093/10474/6659671cF440761ed/229ef1d84b14e4cd.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/160409/21/41088/12223/665967afFcf2c0798/cf58fce99c047abc.png']
  @State bgArr:Array<string> = ['https://m.360buyimg.com/mobile/s200x64_jfs/t1/238956/29/10436/34536/665966feFdb01d61b/be04a99862834e4d.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/85226/25/44601/32083/66596791F3760c171/272c6181bedfd48e.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/247547/30/10213/31721/66596776F73403f3d/0df824158eba1868.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/181028/34/41195/32719/665fc49aF17834fbd/81607810b8ed1ae9.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/228376/34/17831/33199/665967c6F3be703fd/d52974aaae288152.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/227514/38/19029/28662/66596737F40ee8a96/f535216622d35864.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/220746/4/41686/32061/665d8ba7F99daa542/54de2444ee7044af.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/168009/12/40800/31858/665967e1F0f56ff36/bfb1ddff28b200aa.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/153992/5/37776/32654/66596755Fb26fa397/1da0e74e0ea4d20f.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/218946/25/41151/33227/66596717F64b279b0/4e4c3b89cc37abe5.png',
    'https://m.360buyimg.com/mobile/s200x64_jfs/t1/93457/10/43126/32222/665967aaF8e415a92/634ef39536052028.png'

  ]
  @State click:number = -1;
  @State click2:number = 0
  @State commodityList:Array<CommodityList> = CommodeityLsitData
  Scroller: Scroller = new Scroller()
  build() {

    Scroll(this.Scroller){
      Column() {
        Row(){
          Row({space:10}){
            Text('x')
              .fontSize(12)
              .fontColor(Color.White)
              .border({
                style:BorderStyle.Solid,
                color:Color.White,
                width:1
              })
              .textAlign(TextAlign.Center)
              .width(18)
              .height(18)
              .borderRadius(100)
            Image($r('app.media.ad0294917f47e6b8'))
              .width(30)
              .margin({left:10})
            Column({space:2}){
              Text('打开京东APP')
                .fontSize(12)
                .fontColor(Color.White)
              Text('实惠又轻松')
                .fontColor(Color.Gray)
                .fontSize(12)
                .width(70)
                .textAlign(TextAlign.Start)
            }
          }
          Button({type:ButtonType.Normal}){
            Text('立即打开')
              .fontColor(Color.White)
          }
          .backgroundColor(Color.Red)
          .width(100)
          .height(45)

        }
        .justifyContent(FlexAlign.SpaceBetween)
        .backgroundColor(Color.Black)
        .width('100%')
        .padding({left:20})

        Stack({alignContent:Alignment.Center}){
          Column(){
            Column(){
              Image($r('app.media.563ee79ee8539579'))
                .width('96%')
            }.justifyContent(FlexAlign.Center)
            .width('100%')
            Scroll(this.Scroller){
              Row({space:5}){
                ForEach(this.arr,(item:string)=>{
                  Button({type:ButtonType.Normal}){
                    Text(item)
                      .fontSize(14)
                  }
                  .backgroundColor(Color.White)
                  .height(36)
                  .borderRadius(15)
                  .padding(5)
                })
              }
            }
            // .scrollBar(BarState.On)
            .scrollable(ScrollDirection.Horizontal)
            .margin({top:10})
            .scrollBar(BarState.Off)
          }
          .backgroundColor(Color.Red)
          .padding(10)
          .width('100%')
          .height(250)
          .margin({top:-13})
          .scale({y:.9})
          Scroll(this.Scroller){
            Row({space:5}){
              Column(){
                Stack({alignContent:Alignment.Center}){
                  if(this.click == -1) Image($r('app.media.ic_bg'))
                  Column({space:5}){
                    Row(){
                      Text('00')
                        .padding(2)
                        .width(25)
                        .height(25)
                        .fontColor(this.click === -1?Color.White:Color.Red)
                        .fontWeight(FontWeight.Bold)
                        .textAlign(TextAlign.Center)
                        .borderRadius(4)
                        .backgroundColor(this.click === -1?Color.Black:Color.White)
                      Text(':')
                        .width(10)
                        .textAlign(TextAlign.Center)
                        .fontColor(this.click === -1?Color.Black:Color.White)
                        .fontWeight(FontWeight.Bold)
                      Text('00')
                        .padding(2)
                        .width(25)
                        .height(25)
                        .fontColor(this.click === -1?Color.White:Color.Red)
                        .fontWeight(FontWeight.Bold)
                        .textAlign(TextAlign.Center)
                        .borderRadius(4)
                        .backgroundColor(this.click === -1?Color.Black:Color.White)
                      Text(':')
                        .width(10)
                        .textAlign(TextAlign.Center)
                        .fontColor(this.click === -1?Color.Black:Color.White)
                        .fontWeight(FontWeight.Bold)
                      Text('00')
                        .padding(2)
                        .width(25)
                        .height(25)
                        .fontColor(this.click === -1?Color.White:Color.Red)
                        .fontWeight(FontWeight.Bold)
                        .textAlign(TextAlign.Center)
                        .borderRadius(4)
                        .backgroundColor(this.click === -1?Color.Black:Color.White)
                    }
                    Text('14点专场')
                      .fontSize(12)
                      .fontColor(this.click === -1?Color.Red:Color.White)
                  }
                  .scale({x:0.8,y:0.8})
                  .margin({
                    left:-30
                  })
                }
              }
              .width(141)
              .height(66)
              .backgroundColor(Color.Red)
              .onClick(()=>{
                this.click = -1
              })
              ForEach(this.arr2,(item:string,index:number)=>{
                Stack(){
                  if(this.click == index) Image(this.bg[1])
                  Column(){
                    Text(item)
                      .fontSize(18)
                      .fontColor(this.click==index?Color.Black:Color.White)
                      .fontWeight(FontWeight.Bolder)
                    Text('即将开抢')
                      .fontSize(14)
                      .fontColor(this.click == index?Color.Red:Color.White)

                  }
                  .margin({bottom:30})

                }
                .onClick((v)=>{
                  this.click = index
                })
                .width(140)
                .height('100%')
                .padding(5)
                .margin({bottom:-10})
              },(item : string) =>item)
            }
          }
          .height(66)
          .scrollBar(BarState.On)
          .scrollable(ScrollDirection.Horizontal)
          .margin({top:147})
          .scrollBar(BarState.Off)
          //.height('100.00vp')
        }
        Column(){
          Row(){
            Scroll(this.Scroller){
             Row(){
               ForEach(this.arr3,(item:string,index:number)=>{
                 Image(this.click2 == index ? this.bgArr[index] :item )
                   .width(104)
                   .margin({right:10})
                   .onClick(()=>{
                      this.click2 = index
                   })
               })
             }
            }
            .scrollBar(BarState.Off)
            .scrollable(ScrollDirection.Horizontal)
          }
          Column({space:10}){
            ForEach(this.commodityList,(item:CommodityList,index:number)=>{
              Row({space:10}){
                Image(item.image)
                  .width('30%')
                  .aspectRatio(1)
                Column({space:20}){
                  Column({space:5}){
                    Text(item.name)
                      .fontSize(14)
                      .width('100%')
                      .fontWeight(800)
                      .textAlign(TextAlign.Start)
                    Row({space:5}){
                      ForEach(item.tag,(item2:string,index:number)=>{
                        Text(item2)
                          .fontSize(10)
                          .fontColor(index==0?Color.Red:Color.Orange)
                          .border({
                            width:1,
                            style:BorderStyle.Solid,
                            color:index==0?Color.Red:Color.Orange
                          })
                      })
                    }
                    .width('100%')
                  }
                 Column(){
                   Text('￥'+item.price)
                     .fontWeight(500)
                     .fontColor(Color.Red)
                     .width('100%')
                   Row(){
                     Row(){
                       Row()
                         .backgroundColor(Color.Red)
                         .width(item.buying?item.buying+'%':0)
                         .height(8)
                         .borderRadius(8)
                     }
                     .backgroundColor(Color.Pink)
                     .width(80)
                     .height(10)
                     .borderRadius(10)
                     Text(`已抢购${item.buying?item.buying:0}%`)
                       .fontColor(Color.Red)
                       .fontSize(10)
                      Image($r('app.media.bb7a058c8db1eebf'))
                        .width('25%')
                        .aspectRatio(3)
                   }
                   .width('100%')
                   .padding({left:5})
                   .borderRadius(5)
                   .linearGradient({
                     angle:90,
                     colors:[['#ffeee5e5',0.4],[Color.White,0.5]]
                   })

                   //.backgroundColor('#ffeee5e5')
                 }
                 .width('100%')
                }
                .width('100%')
              }
              .width('100%')
              .padding(10)
              .borderRadius(10)
              .backgroundColor(Color.White)
              .onClick(()=>{
                router.push({url:"pages/CommodityDetail",params:{cid:item.tid}})
              })
            })
          }
          .margin({top:10})
        }
        .margin({top:-25})
        .width('100%')
        .padding(10)
        .backgroundColor('#fff6f6f6')
      }
      .width('100%')
      //.height('100%')
    }
    .scrollable(ScrollDirection.Vertical)
    .scrollBar(BarState.Off)
    .onScroll((xOffset: number, yOffset: number) => {
      console.info(xOffset + ' ' + yOffset)
    })
  }
}