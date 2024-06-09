@Entry
@Component
struct Day052 {
  @State message: string = 'Hello World';

  build() {
    List(){
      ListItem()
      ListItem(){
        Column({space:10}){
          Text('悟道·元宇宙弄潮者')
            .fontSize(18)
            .fontWeight(FontWeight.Bolder)
          Text('终于和大家见面了！在第六期中，我们开设了“T前线”精选，特邀重磅嘉宾送上新鲜出炉的独家观点：Java大神李三红就Java版本升级为企业和开发者分别提出了建议；来自腾讯互娱的曹文升从专项测试的角度讲述了游戏产品的打磨故事等等。开发领域，DevOps 似乎已违背初衷，不再是昔日模样。如何直面这一现实，推陈出新？操作系统领域，华为终于正式发布重大版本，这次能否破了安卓圈？答案尽在本期！')
            .maxLines(6)
            .lineHeight(26)
            .textIndent(32)
            .textOverflow({overflow:TextOverflow.Ellipsis})
          Row({space:10}){
            Text('下载')
              .align(Alignment.Center)
            Button('pdf下载')
              .width(128)
              .height(30)
              .fontSize(14)
              .backgroundColor(Color.Red)
          }
          .height(60)

        }
        .width('100%')
      }
    }
    .width('100%')
    .margin({top:20})
  }
}