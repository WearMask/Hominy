@Entry
@Component
struct Day7 {
  @State message: string = 'saber';
  scroller: Scroller = new Scroller();

  build() {
    Scroll(this.scroller){
      Column({space:100}) {
        Text(this.message)
          .fontSize(30)
          .fontColor('#f0f0f0')
          .fontWeight(FontWeight.Bold)
          .width(100)
          .height(60)
          .textAlign(TextAlign.Center)
          .margin({top:50})
          .linearGradient({
            angle:90,
            colors:[[Color.Black,0],[Color.Gray,0.5],[Color.White,1]],
            //direction:GradientDirection.Left
            //repeating:true
          })
        Text('saber')
          .fontSize(30)
          .fontColor("#f0f0f0")
          .fontWeight(FontWeight.Bolder)
          .width(100)
          .height(60)
          .textAlign(TextAlign.Center)
          .radialGradient({
            center:[50,30],
            colors:[[Color.Black,0],[Color.Gray,0.5],[Color.White,1]],
            radius:30
          })
        Text('saber')
          .fontSize(30)
          .fontColor("#f0f0f0")
          .fontWeight(FontWeight.Bolder)
          .width(100)
          .height(60)
          .textAlign(TextAlign.Center)
          .shadow({
            radius:30,
            color:'rgba(0,0,0,0.3)',
            offsetY:30,
            offsetX:30,
            //fill:true 内部填充
          })
        Column({space:30}){
          Image($r('app.media.459b12a3d6327f658756df4a4f8a8ee9f3d72115'))
            .width(150)
          Text('HUAWEI MATE X5')
            .fontSize(15)
            .fontWeight(800)
            .width('100%')
          Text('￥12999 起')
            .fontSize(14)
            .width('100%')
          Row({space:20}){
            Row(){
              Text('了解更多')
                .fontSize(14)
              Text('>')
                .fontSize(14)
            }
            Row(){
              Text('购买')
                .fontSize(14)
              Text('>')
                .fontSize(14)
            }
          }
          .width('100%')
        }
        .width(200)
        .padding(20)
        .shadow({
          color:'rgba(0,0,0,0.2)',
          radius:20,
          offsetY:-20,
        })
      }
      .width('100%')
      //.height('100%')
    }
    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    .scrollBar(BarState.On) // 滚动条常驻显示

  }
}