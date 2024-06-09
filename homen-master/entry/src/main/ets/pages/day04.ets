@Entry
@Component
struct Day04 {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('高达seed')
        .fontSize(20)
        .fontColor('#bebebe')
        .lineHeight(40)

      Image($r('app.media.459b12a3d6327f658756df4a4f8a8ee9f3d72115'))
        .width(200)
      Text('高达观星者')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .lineHeight(100)
      Text('Freedom')
        .fontSize(30)
        .fontColor('#bebebe')
    }
    .backgroundColor(Color.Gray)
    .width('100%')
  }
}