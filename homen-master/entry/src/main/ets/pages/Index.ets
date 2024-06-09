import { router } from '@kit.ArkUI';

@Observed
class LinkData{

}

@Entry
@Component
struct Index {
  @State message: string = '打开京东APP,实惠又轻松';

  build() {
    Row() {
      Flex({direction:FlexDirection.Column}){
        Column() {
          Flex({justifyContent:FlexAlign.SpaceBetween}){

            Image('https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png')
              .width(40)
              .margin({
                left:10,
              })
              .visibility(Visibility.Visible)
            Text(this.message)
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
              .lineHeight(35)
              .fontColor(Color.White)
              .margin({
                left:10
              })
            Button(){
              Text('立即打开')
                .fontSize(20)
                .fontColor(Color.White)
                .lineHeight(30)
            }
            .type(ButtonType.Normal)
            .stateEffect(true)
            .borderRadius(8)
            .width(100)
            .height(40)
            .margin({
              left:32
            })
            .backgroundColor(Color.Red)
            .borderRadius('2vp')
            .backgroundImageSize({ width: '', height: '' })
            .visibility(Visibility.Visible)
            .borderStyle(BorderStyle.Solid)
          }
          .backgroundColor(Color.Black)
          .borderColor('#ff000000')
        }
        .width('100%')
        Column(){
          Flex(){
            Text('三')
              .fontSize(25)
              .fontColor(Color.White)
            TextInput()
              .borderRadius(50)
              .backgroundColor(Color.White)
              .width(250)
              .height(25)
              .margin({
                left:10,
                top:2
              })
            Button('登陆')
              .backgroundColor(Color.Red)
              .height(25)
          }
          .backgroundColor(Color.Red)
        }
        .width('100%')
        Column(){
          Column(){
            Flex({justifyContent:FlexAlign.SpaceBetween}){
              Column(){
                Image('https://m15.360buyimg.com/mobilecms/jfs/t1/187640/12/30456/5256/639c2315Ebc95c142/350a8f0c766f5460.png')
                  .width(36)
                  .height(36)
                Text('京东超市')
                  .fontSize(11)
              }
              .padding(5)
              Column(){
                Image('https://m15.360buyimg.com/mobilecms/jfs/t1/187640/12/30456/5256/639c2315Ebc95c142/350a8f0c766f5460.png')
                  .width(36)
                  .height(36)
                Text('京东电器')
                  .fontSize(11)
              }
              .padding(5)
              Column(){
                Image('https://m15.360buyimg.com/mobilecms/jfs/t1/187640/12/30456/5256/639c2315Ebc95c142/350a8f0c766f5460.png')
                  .width(36)
                  .height(36)
                Text('服饰美妆')
                  .fontSize(11)
              }
              .padding(5)
              Column(){
                Image('https://m15.360buyimg.com/mobilecms/jfs/t1/187640/12/30456/5256/639c2315Ebc95c142/350a8f0c766f5460.png')
                  .width(36)
                  .height(36)
                Text('充值中心')
                  .fontSize(11)
              }
              .padding(5)
              Column(){
                Image('https://m15.360buyimg.com/mobilecms/jfs/t1/187640/12/30456/5256/639c2315Ebc95c142/350a8f0c766f5460.png')
                  .width(36)
                  .height(36)
                Text('PLUS会员')
                  .fontSize(11)
                  .backgroundColor('#00000000')
              }
              .padding(5)
            }
            .backgroundColor(Color.White)
            .borderRadius(10)
            .width('95%')
            .padding({
              top:10,
              bottom:10
            })

          }
        }
        .linearGradient({
          angle: 180,
          colors: [['#ffff0000', 0], ["#FFF77474", 0.5],  ["#00CACACA", 1]]
        })

        .width('100%')
        .padding({
          top:10,
          bottom:10
        })
        .margin({
          top:2
        })
        .borderColor('#73ffcaca')
        .backgroundColor('#00000000')
        Column(){
          Flex({justifyContent:FlexAlign.SpaceBetween}){
            Column(){
              Flex({direction:FlexDirection.Column}){
                Image('https://img30.360buyimg.com/img/jfs/t1/227615/23/8080/1616/65782dd8F605d99af/0d97136b32d5ab1b.png')
                  .width(68)
                  .height(14)
                  .margin({
                    top:10
                  })
                Text('临时低价')
                  .fontColor(Color.White)
                  .fontWeight(FontWeight.Bold)
                  .margin({
                    top:5
                  })
                Column(){
                  Text('去抢购')
                    .width(56)
                    .height(16)
                    .backgroundColor(Color.White)
                    .fontColor(Color.Red)
                    .fontSize(12)
                    .borderRadius(100)
                    .margin({
                      top:10
                    })
                    .padding(2)
                  Image('https://img20.360buyimg.com/img/jfs/t1/238192/15/7188/265/65783069F1178bf7d/b15fdc2244088b71.png')
                    .width(13)
                    .height(13)
                    .margin({
                      left:36,
                      top:-14
                    })
                }
              }
              .padding(5)
            }

            Column(){
              Flex({justifyContent:FlexAlign.SpaceAround}){
                Column(){
                  Image('https://m.360buyimg.com/seckillcms/jfs/t1/242537/21/9945/87567/6659c253F768151fd/0c8bbaeac92e6d03.jpg')
                    .width(55)
                    .height(55)
                  Text("￥1099")
                    .fontSize(11)
                    .fontColor(Color.Red)

                }
                .onClick(()=>{
                  router.push({url:'pages/Page3'})
                })
                Column(){
                  Image('https://m.360buyimg.com/seckillcms/jfs/t1/242537/21/9945/87567/6659c253F768151fd/0c8bbaeac92e6d03.jpg')
                    .width(55)
                    .height(55)
                  Text("￥1099")
                    .fontSize(11)
                    .fontColor(Color.Red)

                }
                .onClick(()=>{
                  router.push({url:'pages/Page3'})
                })
                Column(){
                  Image('https://m.360buyimg.com/seckillcms/jfs/t1/242537/21/9945/87567/6659c253F768151fd/0c8bbaeac92e6d03.jpg')
                    .width(55)
                    .height(55)
                  Text("￥1099")
                    .fontSize(11)
                    .fontColor(Color.Red)

                }
                .onClick(()=>{
                  router.push({url:'pages/Page3'})
                })
                Column(){
                  Image('https://m.360buyimg.com/seckillcms/jfs/t1/242537/21/9945/87567/6659c253F768151fd/0c8bbaeac92e6d03.jpg')
                    .width(55)
                    .height(55)
                  Text("￥1099")
                    .fontSize(11)
                    .fontColor(Color.Red)

                }
                .onClick(()=>{
                  router.push({url:'pages/Page3'})
                })
              }
              .padding({
                top:5,
                bottom:5
              })
            }
            .backgroundColor(Color.White)
            .width('70%')
            // .padding({
            //   left:10,
            //   right:10
            // })
            .borderRadius(10)
          }
          .width('95%')
          .borderRadius(10)
          .backgroundColor(Color.Red)
          .padding(2)

        }
        .width('100%')
        .height(85)
        .backgroundColor('#008b8b8b')
        // Flex({wrap:FlexWrap.Wrap}){
        //   Column(){
        //     Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
        //       .width(150)
        //       .height(150)
        //     Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
        //       .textOverflow({overflow:TextOverflow.Ellipsis})
        //       .maxLines(2)
        //       .fontSize(12)
        //       .fontWeight(FontWeight.Bold)
        //       .backgroundColor('#00757575')
        //       .margin({
        //         top:10,
        //         bottom:5
        //       })
        //     Text('￥1580.00')
        //       .width(160)
        //       .fontColor(Color.Red)
        //       .margin({
        //         top:5,
        //         bottom:10
        //       })
        //     Column(){
        //      Flex({justifyContent:FlexAlign.SpaceBetween}){
        //        Text('13条评论')
        //          .fontSize(9)
        //          .fontColor('#ff5a5a5a')
        //        Button('看相似')
        //          .fontSize(8)
        //          .fontColor(Color.Black)
        //          .width(35)
        //          .height(12)
        //          .backgroundColor('#FFB7B7B7')
        //          .padding(0)
        //          .borderRadius(100)
        //
        //      }
        //     }
        //     .width(160)
        //   }
        //   .width(170)
        //   .backgroundColor(Color.White)
        //   .padding(10)
        //   Column(){
        //     Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
        //       .width(150)
        //       .height(150)
        //     Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
        //       .textOverflow({overflow:TextOverflow.Ellipsis})
        //       .maxLines(2)
        //       .fontSize(12)
        //       .fontWeight(FontWeight.Bold)
        //       .backgroundColor('#00757575')
        //       .margin({
        //         top:10,
        //         bottom:5
        //       })
        //     Text('买贵双倍赔偿')
        //       .fontColor(Color.Red)
        //       .width(150)
        //       .fontSize(9)
        //       .margin({
        //         top:5,
        //         bottom:5
        //       })
        //     Text('￥1580.00')
        //       .width(160)
        //       .fontColor(Color.Red)
        //       .margin({
        //         top:5,
        //         bottom:10
        //       })
        //     Column(){
        //       Flex({justifyContent:FlexAlign.SpaceBetween}){
        //         Text('13条评论')
        //           .fontSize(9)
        //           .fontColor('#ff5a5a5a')
        //         Button('看相似')
        //           .fontSize(8)
        //           .fontColor(Color.Black)
        //           .width(35)
        //           .height(12)
        //           .backgroundColor('#FFB7B7B7')
        //           .padding(0)
        //           .borderRadius(100)
        //
        //       }
        //     }
        //     .width(160)
        //   }
        //   .width(170)
        //   .backgroundColor(Color.White)
        //   .padding(10)
        //   Column(){
        //     Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
        //       .width(150)
        //       .height(150)
        //     Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
        //       .textOverflow({overflow:TextOverflow.Ellipsis})
        //       .maxLines(2)
        //       .fontSize(12)
        //       .fontWeight(FontWeight.Bold)
        //       .backgroundColor('#00757575')
        //       .margin({
        //         top:10,
        //         bottom:5
        //       })
        //     Text('￥1580.00')
        //       .width(160)
        //       .fontColor(Color.Red)
        //       .margin({
        //         top:5,
        //         bottom:10
        //       })
        //     Column(){
        //       Flex({justifyContent:FlexAlign.SpaceBetween}){
        //         Text('13条评论')
        //           .fontSize(9)
        //           .fontColor('#ff5a5a5a')
        //         Button('看相似')
        //           .fontSize(8)
        //           .fontColor(Color.Black)
        //           .width(35)
        //           .height(12)
        //           .backgroundColor('#FFB7B7B7')
        //           .padding(0)
        //           .borderRadius(100)
        //
        //       }
        //     }
        //     .width(160)
        //   }
        //   .width(170)
        //   .backgroundColor(Color.White)
        //   .padding(10)
        //   Column(){
        //     Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
        //       .width(150)
        //       .height(150)
        //     Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
        //       .textOverflow({overflow:TextOverflow.Ellipsis})
        //       .maxLines(2)
        //       .fontSize(12)
        //       .fontWeight(FontWeight.Bold)
        //       .backgroundColor('#00757575')
        //       .margin({
        //         top:10,
        //         bottom:5
        //       })
        //     Text('买贵双倍赔偿')
        //       .fontColor(Color.Red)
        //       .width(150)
        //       .fontSize(9)
        //       .margin({
        //         top:5,
        //         bottom:5
        //       })
        //     Text('￥1580.00')
        //       .width(160)
        //       .fontColor(Color.Red)
        //       .margin({
        //         top:5,
        //         bottom:10
        //       })
        //     Column(){
        //       Flex({justifyContent:FlexAlign.SpaceBetween}){
        //         Text('13条评论')
        //           .fontSize(9)
        //           .fontColor('#ff5a5a5a')
        //         Button('看相似')
        //           .fontSize(8)
        //           .fontColor(Color.Black)
        //           .width(35)
        //           .height(12)
        //           .backgroundColor('#FFB7B7B7')
        //           .padding(0)
        //           .borderRadius(100)
        //
        //       }
        //     }
        //     .width(160)
        //   }
        //   .width(170)
        //   .backgroundColor(Color.White)
        //   .padding(10)
        // }
        // .width('100%')
        // .padding({
        //   left:5,
        //   right:5
        // })
        // .backgroundColor('#009c9c9c')
        List(){
          ListItem(){
            Column(){
              Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
                .width(150)
                .height(150)
              Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
                .textOverflow({overflow:TextOverflow.Ellipsis})
                .maxLines(2)
                .fontSize(12)
                .fontWeight(FontWeight.Bold)
                .backgroundColor('#00757575')
                .margin({
                  top:10,
                  bottom:5
                })
              Text('￥1580.00')
                .width(160)
                .fontColor(Color.Red)
                .margin({
                  top:5,
                  bottom:10
                })
              Column(){
                Flex({justifyContent:FlexAlign.SpaceBetween}){
                  Text('13条评论')
                    .fontSize(9)
                    .fontColor('#ff5a5a5a')
                  Button('看相似')
                    .fontSize(8)
                    .fontColor(Color.Black)
                    .width(35)
                    .height(12)
                    .backgroundColor('#FFB7B7B7')
                    .padding(0)
                    .borderRadius(100)

                }
              }
              .width(160)
            }
            .width(170)
            .backgroundColor(Color.White)
            .padding(10)
          }
          ListItem(){
            Column(){
              Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
                .width(150)
                .height(150)
              Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
                .textOverflow({overflow:TextOverflow.Ellipsis})
                .maxLines(2)
                .fontSize(12)
                .fontWeight(FontWeight.Bold)
                .backgroundColor('#00757575')
                .margin({
                  top:10,
                  bottom:5
                })
              Text('买贵双倍赔偿')
                .fontColor(Color.Red)
                .width(150)
                .fontSize(9)
                .margin({
                  top:5,
                  bottom:5
                })
              Text('￥1580.00')
                .width(160)
                .fontColor(Color.Red)
                .margin({
                  top:5,
                  bottom:10
                })
              Column(){
                Flex({justifyContent:FlexAlign.SpaceBetween}){
                  Text('13条评论')
                    .fontSize(9)
                    .fontColor('#ff5a5a5a')
                  Button('看相似')
                    .fontSize(8)
                    .fontColor(Color.Black)
                    .width(35)
                    .height(12)
                    .backgroundColor('#FFB7B7B7')
                    .padding(0)
                    .borderRadius(100)

                }
              }
              .width(160)
            }
            .width(170)
            .backgroundColor(Color.White)
            .padding(10)
          }
          ListItem(){
            Column(){
              Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
                .width(150)
                .height(150)
              Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
                .textOverflow({overflow:TextOverflow.Ellipsis})
                .maxLines(2)
                .fontSize(12)
                .fontWeight(FontWeight.Bold)
                .backgroundColor('#00757575')
                .margin({
                  top:10,
                  bottom:5
                })
              Text('￥1580.00')
                .width(160)
                .fontColor(Color.Red)
                .margin({
                  top:5,
                  bottom:10
                })
              Column(){
                Flex({justifyContent:FlexAlign.SpaceBetween}){
                  Text('13条评论')
                    .fontSize(9)
                    .fontColor('#ff5a5a5a')
                  Button('看相似')
                    .fontSize(8)
                    .fontColor(Color.Black)
                    .width(35)
                    .height(12)
                    .backgroundColor('#FFB7B7B7')
                    .padding(0)
                    .borderRadius(100)

                }
              }
              .width(160)
            }
            .width(170)
            .backgroundColor(Color.White)
            .padding(10)
          }
          ListItem(){
            Column(){
              Image('https://img14.360buyimg.com/mobilecms/s360x360_jfs/t1/229215/31/17192/100678/665a0464Fcd43ed22/98142202e2341d28.jpg!q70.dpg.webp')
                .width(150)
                .height(150)
              Text('圣伽步skap2024春季新款厚底运动休闲鞋男鞋A4M07AM4 黑色 41')
                .textOverflow({overflow:TextOverflow.Ellipsis})
                .maxLines(2)
                .fontSize(12)
                .fontWeight(FontWeight.Bold)
                .backgroundColor('#00757575')
                .margin({
                  top:10,
                  bottom:5
                })
              Text('买贵双倍赔偿')
                .fontColor(Color.Red)
                .width(150)
                .fontSize(9)
                .margin({
                  top:5,
                  bottom:5
                })
              Text('￥1580.00')
                .width(160)
                .fontColor(Color.Red)
                .margin({
                  top:5,
                  bottom:10
                })
              Column(){
                Flex({justifyContent:FlexAlign.SpaceBetween}){
                  Text('13条评论')
                    .fontSize(9)
                    .fontColor('#ff5a5a5a')
                  Button('看相似')
                    .fontSize(8)
                    .fontColor(Color.Black)
                    .width(35)
                    .height(12)
                    .backgroundColor('#FFB7B7B7')
                    .padding(0)
                    .borderRadius(100)

                }
              }
              .width(160)
            }
            .width(170)
            .backgroundColor(Color.White)
            .padding(10)
          }

        }
        .lanes({ minLength: 180, maxLength: 300 })
        .width('100%')
        Column(){
          Stack(){
            Flex({justifyContent:FlexAlign.SpaceEvenly}){
              Button({ type: ButtonType.Normal }){
                Image('https://img11.360buyimg.com/jdphoto/s130x100_jfs/t1/67550/26/12426/5094/5d9c4b13Eea435a3f/81328b0609c60a3c.png')
              }
                .width(62)
                .height('100%')
                .backgroundColor(Color.White)
                .borderRadius('2px')
                .borderStyle(BorderStyle.Dashed)
                .borderRadius('0px')
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
                Image('https://img11.360buyimg.com/jdphoto/s130x100_jfs/t1/64954/4/12406/3529/5d9c4b12Ee7a82735/f2fe0a88bf344736.png')
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
            }

          }
          .width('100%')
          .height(50)
        }

      }

    }
  }


}