import { router } from '@kit.ArkUI';
import CarData, { CarDataModel } from '../viewmodel/CarDataModel';


@Entry
@Component
struct Page2 {
  @State message: string = 'Hello World';
  private  cardDataList: Array<CarData> = CarDataModel;
  private dijiaArr: Array<CarData> = [];
  private dijiaArr2: Array<CarData> = [];

  @Builder CarList(prams:CarData){
    Column(){
      Image(prams.imageUrl)
      Row(){
        // Text('京东超市')
        //   .fontSize(12)
        //   .backgroundColor(Color.Green)
        //   .fontColor(Color.White)
        //   .borderRadius(50)
        //   .align(Alignment.Top)
        Text(prams.name)
          .margin({left:5})
          .maxLines(2)
          .width("100%")
          .textOverflow({overflow:TextOverflow.Ellipsis})
      }
      .height(40)
      Column(){
        if(prams.dijia){
          Row(){
            Text('90天低价')
              .backgroundColor(Color.Gray)
              .fontColor(Color.Pink)
              .padding({
                top:2,
                bottom:2,
                left:5,
                right:5
              })
              .textAlign(TextAlign.Start)
              .borderRadius(50)
          }
          .width('100%')
        }
        Text('￥'+prams.price)
          .fontColor(Color.Red)
          .fontSize(20)
          .textAlign(TextAlign.Start)
          .width('100%')
        Text(prams.pinjia+'条评论')
          .width('100%')
      }
      .width('100%')
    }
    .justifyContent(FlexAlign.SpaceAround)
    .padding(5)
    .backgroundColor(Color.White)
    .borderRadius(10)
    .width('100%')
    .margin({top:10})

  }

  build() {
    Stack({alignContent:Alignment.BottomStart}){
      List(){
        ListItem(){
          Column(){
            Flex({justifyContent:FlexAlign.SpaceBetween}){
              Button({type: ButtonType.Circle, stateEffect: false }){
                Text('X')
                  .fontColor(Color.White)
                  .fontSize(12)
              }
              .backgroundColor(Color.Black)
              .borderWidth(1)
              .borderColor(Color.White)
              .borderRadius("100%")
              .margin({
                left:10,
                top:10
              })
              .height(20)
              .width(20)
              Row(){
                Image($r('app.media.ad0294917f47e6b8'))
                  .height(40)
                  .margin({
                    right:15
                  })
                Column(){
                  Text('打开京东APP')
                    .fontColor(Color.White)
                    .fontWeight(FontWeight.Bold)
                  Text('实惠又轻松')
                    .fontColor(Color.Gray)
                    .textAlign(TextAlign.Start)
                    .margin({
                      top:5
                    })
                    .width(100)
                }
              }
              Button({type:ButtonType.Normal}){
                Text('立即打开')
                  .fontSize(20)
                  .fontColor(Color.White)
              }
              .width(125)
              .height(50)
              .backgroundColor(Color.Red)
            }
            .width('100%')
            .backgroundColor(Color.Black)
            Flex({justifyContent:FlexAlign.SpaceBetween}){
              Text('《')
                .fontSize(20)
                .onClick(()=>{
                  router.push({url:'pages/Page1'})
                })
              Text('购物车')
              Text('. . .')
                .fontWeight(FontWeight.Bolder)
                .fontSize(20)
            }
            .margin({top:0})
            .backgroundColor(Color.White)
            .padding(10)
            Column(){
              Flex({justifyContent:FlexAlign.Center}){
                Text('登录后可同步账户购物车中的商品')
                  .fontSize(15)
                  .lineHeight(35)
                Button('登录')
                  .backgroundColor(Color.Red)
                  .margin({left:10})
              }
              .width('100%')
              .height(70)
              .padding({
                top:10,
                bottom:10
              })
              // .margin({left:'50%'})
            }
            .margin({
              top:2
            })
            .backgroundColor(Color.White)
            .margin({top:2})
            Column(){
              Column(){
                Image('https://img11.360buyimg.com/jdphoto/s180x180_jfs/t18163/292/540553659/74408/adeb7463/5a93c51cN3bb5e37b.png')
                  .width(90)
                Text('登录后可同步购物车中的商品')
                  .margin({top:10})
                Image('https://img12.360buyimg.com/img/s694x148_jfs/t1/171999/12/22113/58222/61bad82eE0dcf6d31/d92d1e829bf953da.png')
                  .width(340)
                  .margin({top:70})

              }
              .margin({top:80})
              .justifyContent(FlexAlign.Center)
            }
            .height(366)
            .width('100%')
            .margin({top:50})
            Row(){

            }
          }
        }
        ListItem(){
          Row(){
            Column(){
              ForEach(this.cardDataList,(item:CarData,index:number)=>{
                if(item.dijia){
                  this.CarList(item)
                }
              })
            }
            .width("49%")
            Column(){
              ForEach(this.cardDataList,(item:CarData,index:number)=>{
                if(!item.dijia){
                  this.CarList(item)
                }
              })
            }
            .margin({left:10,top:-250})
            .width("49%")
          }
          .width('100%')
        }
      }
      .scrollBar(BarState.Off)
      .height('100%')
      .width('100%')
      Column(){
        Flex({justifyContent:FlexAlign.SpaceEvenly}){
          Button({ type: ButtonType.Normal }){
            Image('https://img11.360buyimg.com/jdphoto/s130x100_jfs/t1/81741/30/12345/4140/5d9c4b13E726f0a1e/82c582e7c375e4b3.png')
          }
          .width(62)
          .height('100%')
          .backgroundColor(Color.White)
          .borderRadius('2px')
          .borderStyle(BorderStyle.Dashed)
          .borderRadius('0px')
          .onClick(()=>{
            router.push({url:'pages/Index'})
          })
          Button({ type: ButtonType.Normal }){
            Image('https://img11.360buyimg.com/jdphoto/s130x100_jfs/t1/56507/6/12787/3168/5d9c4b12Ef363dd8d/4af32f42575509d8.png')
          }
          .width(62)
          .height('100%')
          .backgroundColor(Color.White)
          .borderRadius('2px')
          .borderStyle(BorderStyle.Dashed)
          .borderRadius('0px')
          .onClick(()=>{
            router.push({url:'pages/Page1'})
          })
          Button({ type: ButtonType.Normal }){
            Image('https://img11.360buyimg.com/jdphoto/s130x100_jfs/t1/45205/32/12889/3890/5d9c4b12E7bc2c425/dd60fafbde8542ca.png')
          }
          .width(62)
          .height('100%')
          .backgroundColor(Color.White)
          .borderRadius('2px')
          .borderStyle(BorderStyle.Dashed)
          .borderRadius('0px')
          .onClick(()=>{
            router.push({url:'pages/Page2'})
          })
          Button({ type: ButtonType.Normal }){
            Image('https://img12.360buyimg.com/img/s130x100_jfs/t1/203343/14/10880/3097/61641568E184a8e0b/4522f6ec5bb9b10b.png')
          }
          .width(62)
          .height('100%')
          .backgroundColor(Color.White)
          .borderRadius('2px')
          .borderStyle(BorderStyle.Dashed)
          .borderRadius('0px')
          .onClick(()=>{
            router.push({url:'pages/login'})
          })
        }
        .width('100%')
        .height(50)

      }

      .backgroundColor(Color.White)
    }
      .width("100%")
      .height('100%')
      .backgroundColor('#ffdfdfdf')

  }
}