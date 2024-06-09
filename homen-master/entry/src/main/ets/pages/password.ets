import { FaultLogger } from '@kit.PerformanceAnalysisKit';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct Password {
  @State message: string = 'Hello World';
  @State inputChange:Boolean = false;

  build() {
    Column({space:10}) {
        Row(){
          Text('<')
            .fontSize(25)
            .onClick(()=>{
              this.inputChange = false
              router.push({url:'pages/login'})
            })
          Text('忘记密码')
            .fontSize(20)
            .textAlign(TextAlign.Center)
            .width('100%')
        }.width('100%')
        .padding(10)
      Row(){
        Text('账号')
        TextInput({placeholder:'账号名/邮箱/手机号'})
          .backgroundColor(Color.White)
          .onChange((v)=>{
            v.length!=0? this.inputChange = true :  this.inputChange = false
          })
      }
      .padding(10)
      .border({
        style:{bottom:BorderStyle.Solid},
        width:{bottom:1},
        color:{bottom:Color.Gray}
      })
      Button('下一步')
        .width('100%')
        .padding({
          top:10,
          bottom:10
        })
        .margin({
          top:40
        })
        .linearGradient({
          angle:90,
          colors:!this.inputChange?[['#FFF77474', 0], ["#FFF77474", 0.5],  ["#FFF77474", 1]] : [['#ffff0000', 0], ["#ffff0000", 0.5],  ["#ffff0000", 1]]
        })
        .shadow({
          radius:40,
          color:'#FFF77474',
          offsetY:-10
        })
    }
    .padding({
      left:20,
      right:20
    })
    .borderColor('#ffff0000')
  }
}