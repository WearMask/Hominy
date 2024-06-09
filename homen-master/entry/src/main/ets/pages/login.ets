import { router } from '@kit.ArkUI';
import { FaultLogger } from '@kit.PerformanceAnalysisKit';
@Entry
@Component
struct Login {
  @State message: string|number = '获取验证码';
  @State time:number = 60;
  @State zhuce:Boolean = false;
  @State dialog:Boolean = true;
  @State changeColor:Boolean = false;
  @State passowrdLoig:Boolean = false;

  @Builder Dialog(){
    if(this.dialog){
      Stack({alignContent:Alignment.Center}){
        Column(){

        }
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Black)
        .opacity(.5)
        Column(){
          Column(){
            Text('京东用户服务协议及隐私政策')
            Text(){
              Span('在您注册成为京东用户的过程中，您需要完成我们的注册流程并通过点击同意的形式在线签署以下协议，')
                .lineHeight(20)
                .fontSize(14)
              Span('请您务必仔细阅读、充分理解协议中的条款内容后再点击同意（尤其是以粗体并下划线标识的条款，因为这些条款可能会明确您应履行的义务或对您的权利有所限制）：')
                .lineHeight(20)
                .fontSize(14)
                .decoration({type:TextDecorationType.Underline})
            }
            .lineHeight(20)
            .fontSize(14)
            .margin({top:20})

            Text('《京东用户服务协议》')
              .width('100%')
              .lineHeight(20)
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
            Text('《京东隐私政策》')
              .width('100%')
              .lineHeight(20)
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
          }
          .padding(20)
          Column(){
            Column(){
              Text(){
                Span('点击同意即表示您已阅读并同意')
                  .lineHeight(20)
                  .fontSize(14)
                Span('《京东用户服务协议》')
                  .lineHeight(20)
                  .fontSize(14)
                  .fontColor(Color.Blue)
                  .decoration({type:TextDecorationType.Underline})
                Span('与')
                  .lineHeight(20)
                  .fontSize(14)
                Span('《京东隐私政策》')
                  .lineHeight(20)
                  .fontSize(14)
                  .fontColor(Color.Blue)
                  .decoration({type:TextDecorationType.Underline})
                Span('并将您的订单信息共享给为完成此订单所必须的第三方合作方。关于')
                  .lineHeight(20)
                  .fontSize(14)
                Span('《订单共享与安全》')
                  .lineHeight(20)
                  .fontSize(14)
                  .fontColor(Color.Blue)
                  .decoration({type:TextDecorationType.Underline})
              }
            }.padding(20)
            Row(){
              Button({type:ButtonType.Normal}){
                Text('不同意')
              }
              .backgroundColor(Color.White)
              .width('50%')
              .height(26)
              Button({type:ButtonType.Normal}){
                Text('同意')
                  .fontColor(Color.White)
              }
              .backgroundColor(Color.Red)
              .borderRadius({
                bottomRight:10
              })
              .width('50%')
              .height(39)
              .onClick(()=>{
                this.dialog = false
              })

            }
            .width('100%')
            .height(45)
            .shadow({
              radius:4,
              color:`rgba(0,0,0,0.2)`,
              offsetY:-2,
            })
          }
          .width('100%')
          .height(160)
          .borderRadius(10)
          .shadow({
            radius:4,
            color:`rgba(0,0,0,0.2)`,
            offsetY:-10,
          })
        }
        .backgroundColor(Color.White)
        .borderRadius(10)
        .width(330)
        .height(400)
        //.padding(20)
      }
    }

  }

  build() {
    Column() {
      Stack({alignContent:Alignment.TopStart}){
        Column(){
          Row() {
            Text('<')
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
              .onClick(()=>{
                this.passowrdLoig = false
                this.zhuce = false
                this.zhuce || this.dialog?router.push({url:'pages/Index'}) : router.push({url:'pages/login'})
              })
            Text('京东登录注册')
              .fontSize(25)
              .width('100%')
              .textAlign(TextAlign.Center)
          }
          .padding(20)
          .width('100%')
          Row(){
            Row(){
              Text('+86')
              TextInput({placeholder:!this.passowrdLoig?'请输入手机号':'账号名/邮箱/手机号',})
                .backgroundColor(Color.White)
                .onChange((value: string) => {
                  if(value.length === 11){
                      this.changeColor = true
                  }else{
                    this.changeColor = false
                  }
                })
              Text('X')
            }
            .border({
              style:{bottom:BorderStyle.Solid},
              color:{bottom:Color.Gray},
              width:{bottom:1}
            })
          }
          .width('95%')
          .padding(20)
          if(this.zhuce){
            Row(){
              Button('下一步')
                .width('95%')
                .padding({
                  top:10,
                  bottom:10
                })
                .linearGradient({
                  angle: 90,
                  colors: this.changeColor?[['#FFFF0000', 0], ["#FFFF0000", 0.5],  ["#FFFF0000", 1]] : [['#FFFCA487', 0], ["#FFFCA487", 0.5],  ["#FFF77474", 1]]
                })
                .shadow({
                  radius:30,
                  color:`#FFFCA487`,
                  offsetY:10,
                })

            }
          }
        }
        if(this.zhuce)this.Dialog()
      }

      if(!this.zhuce){
        Row(){
          Row(){
            TextInput({placeholder: !this.passowrdLoig?'请输入验证码':'请输入密码',})
              .backgroundColor(Color.White)
              .width(360)
            Button({type:ButtonType.Normal}){
              Text(!this.passowrdLoig?''+this.message : '忘记密码')
                .fontColor(Color.Gray)
                .onClick(()=>{
                  if(!this.passowrdLoig){
                    this.message = this.time;
                    let timeOut =  setInterval(()=>{
                      this.time--;
                      this.message = this.time;
                      if(this.time == 0){
                        this.message = '获取验证码'
                        clearInterval(timeOut)
                      }
                    },1000)
                  }else {
                    router.push({url:'pages/password'})
                  }
                })
            }
            .width(130)
            .height(40)
            .padding({
              left:20,
              right:20,
            })
            .margin({
              left:-160
            })
            .backgroundColor(Color.White)
            .border({
              style:{left:BorderStyle.Solid},
              color:{left:Color.Gray},
              width:{left:1}
            })

          }
          .width('95%')
          .border({
            style:{bottom:BorderStyle.Solid},
            color:{bottom:Color.Gray},
            width:{bottom:1}
          })
          .padding({
            bottom:10
          })
        }
        .padding({
          left:20,
          right:20
        })
        Button('登录')
          .fontSize(20)
          .width('90%')
          .backgroundColor(Color.White)
          .linearGradient({
            angle: 90,
            colors: [['#FFF77474', 0], ["#FFF77474", 0.5],  ["#FFF77474", 1]]
          })
          .padding({
            top:15,
            bottom:15
          })
          .margin({
            top:30
          })
        Flex({justifyContent:FlexAlign.SpaceBetween}){
          Text('账号密码登录')
            .fontSize(15)
            .onClick(()=>{
              this.passowrdLoig = true
            })
          Text('手机快速注册')
            .fontSize(15)
            .onClick(()=>{
              this.passowrdLoig = false
              this.zhuce = true
            })
        }
        .padding({
          left:10,
          right:10

        })
        .margin({top:20})
        .width('95%')
        Row(){
          Line({
            width:100,
            height:1,
          })
            .startPoint([-10,0])
            .endPoint([90,0])
            .stroke(Color.Gray)
          Text('其他登录方式')
          Line({
            width:100,
            height:1,
          })
            .startPoint([10,0])
            .endPoint([110,0])
            .stroke(Color.Gray)

        }
        .justifyContent(FlexAlign.SpaceAround)
        .margin({top:20})
        .padding(20)
        .width('95%')
        Row(){
          Row({space:40}){
            Image('data:image/png;base64,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')
              .width(50)
            Image('data:image/png;base64,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')
              .width(50)
            Image('data:image/png;base64,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')
              .width(50)
          }
          .justifyContent(FlexAlign.Center)
          .margin({top:20})
        }
        Row(){
          Checkbox({name: 'checkbox2',  group: 'checkboxGroup'})
            .select(false)
            .selectedColor(0x39a2db)
            .onChange((value: boolean) => {
              console.info('Checkbox2 change is'+ value)
            })
          Text('我已阅读并同意《京东用户服务协议》 《用户隐私政策》,未注册的手机号将自动创建京东账号')
            .fontSize(13)
            .fontColor(Color.Gray)
            .lineHeight(20)
            .textAlign(TextAlign.Center)
        }
        .padding(20)
        .margin({top:20})
        .width('95%')
      }else{
        //this.Dialog()
      }
    }
    //.height('100%')
  }
}