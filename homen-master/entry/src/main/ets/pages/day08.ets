@Entry
@Component
struct Day08 {
  scoller:Scroller = new Scroller()

  build() {
    Scroll(this.scoller){
      Column({space:50}){
        Column() {
          Row(){
            Row({space:35}){
              Image($r('app.media.advertising'))
                .width(30)
              Text('广告投放')
                .fontColor(Color.White)
            }
            Row(){
              Text('>')
                .fontSize(20)
                .fontColor(Color.White)
            }
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
          .height(64)
          .padding(16)
          .backgroundImage($r('app.media.adver_bg'))
          .backgroundImageSize({
            width:'100%',
            height:'100%'
          })
          Column(){
            Text('以大数据、智能算法、营销自动化等技术及优质媒体资源，为客户提供包括腾讯广告、小红书、快手、谷歌等海内外营销服务，并打通引流-转化-复购的营销闭环，打造私域运营及短视频、直播服务，助力品牌实现品效合一的全链路营销增长。')
              .fontSize(13)
              .lineHeight(22)
              .fontColor('#5a5b5f')
          }
          .width('100%')
          .height('100%')
          .padding(16)
          .backgroundColor('#e6e5ea')
        }
        .width(260)
        .height(300)
        Column() {
          Column({space:15}) {
            // 标题
            Text('课程视频（0基础学习，任选一套即可）')
              .fontColor('#333')
              .fontWeight(900)

            // 内容1
            Row({space:10}) {
              Image($r('app.media.img01'))
                .width(45)
              Text('1. 黑马程序员20天鸿蒙基础从入门到精通视频教程')
                .fontSize(14)
                .fontColor('#fff')
                .fontWeight(700)
                .lineHeight(22)
                .layoutWeight(1)
            }
            .backgroundImage($r('app.media.bg01'))
            .backgroundImageSize({
              width:'100%',
              height:'100%'
            })
            .width('100%')
            .padding(15)
            .borderRadius(10)
            // 内容2
            Row({space:10}) {
              Image($r('app.media.img02'))
                .width(45)
              Text('2. 鸿蒙入门到起飞，含多所大学练习题+力扣算法题+大厂鸿蒙面试题')
                .fontSize(14)
                .fontColor('#fff')
                .fontWeight(700)
                .lineHeight(22)
                .layoutWeight(1)
            }
            .backgroundImage($r('app.media.bg02'))
            .backgroundImageSize({
              width:'100%',
              height:'100%'
            })
            .width('100%')
            .padding(15)
            .borderRadius(10)
            // 内容3
            Row({ space: 10 }) {
              Image($r('app.media.img01'))
                .width(45)
              Text('3. 2024新版鸿蒙零基础快速入门')
                .fontSize(14)
                .fontColor('#fff')
                .fontWeight(700)
                .lineHeight(22)
            }
            .backgroundImage($r('app.media.bg01'))
            .backgroundImageSize({
              width:'100%',
              height:'100%'
            })
            .width('100%')
            .padding(15)
            .borderRadius(10)
          }
          .padding(15)
          .width('100%')
          .backgroundColor('#eef4ff')
          .borderRadius(10)
        }
        .width('100%')
        .padding(20)
      }
      .width('100%')
    }
    .scrollable(ScrollDirection.Vertical)
  }
}

/**
 * 1,ab
 * 2.abcd
 * 3.abd
 * */