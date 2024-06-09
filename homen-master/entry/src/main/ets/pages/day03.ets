@Entry
@Component
struct Day03 {
  @State message: string = '本机是ZAFT军在得到地球联合军的高达数据资料后开发的高达里的一架，它的出力是强袭高达的4倍以上。机体两翼内各设一门M100型“鲸鱼”等离子光束加农炮，腰部还装有两门MMI-M15型“旗鱼”电磁炮，加上MA-M20型“天狼座”光束步枪，使本机具有相当强劲的火力';

  build() {
    Column() {
      Text(this.message)
        .fontSize(15)
        .fontColor(Color.Red)
        .fontWeight(FontWeight.Bold)
        .lineHeight(25)
        .fontWeight(FontWeight.Bolder)
        .textIndent(30)
        .decoration({type:TextDecorationType.LineThrough,color:Color.Green})
        .fontStyle(FontStyle.Italic)
      Text('GUNDAM:SEED')
        .fontSize('40')
        .width('100%')
        .height('100')
        .backgroundColor(Color.Gray)
        .margin({top:20})
        .textAlign(TextAlign.Center)
        .align(Alignment.Center)
      .width('100%')
    }
    .height('100%')
  }
  /*选择题
   * 1.d
   * 2.c
   * 3.a
   * 4.b
   * 5.a
   * 6.c
   * 7.d
   * 8.c
   * 9.b
   * 10.c
   * 11.a
   * */
}