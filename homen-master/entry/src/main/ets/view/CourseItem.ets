import CourseModel from '../viewmodel/CourseModel';
import Constant from '../common/constants/Constants'

@Component
export  default  struct  CourseItem{
  @Prop itemStr: string = '';
  item?:CourseModel;
  aboutToAppear(): void {
    this.item = JSON.parse(this.itemStr)
  }
  build(){
    Row(){
      Flex({direction:FlexDirection.Column}){
        Column(){
          Text(this.item?.courseName)
            .fontSize($r('app.float.normal_font_size'))
            .fontColor($r('app.color.base_font_color'))
            .maxLines(Constant.TITLE_LINE_NUMBER)
            .fontFamily($r('app.string.hei_ti_medium'))
            .textOverflow({overflow:TextOverflow.Clip})
            .lineHeight($r('app.float.title_line_height'))
            .width(Constant.FULL_PERCENT)
        }
        .padding($r('app.float.course_item_padding'))
        //.layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
        // .justifyContent(FlexAlign.SpaceBetween)
        //.height(Constant.FULL_PERCENT)
        .height(50)
        Flex({wrap: FlexWrap.Wrap }){
          if(this.item !== undefined){
            ForEach(this.item.imageUrl,(item:Resource)=>{
              Image(item)
                //.height(Constant.FULL_PERCENT)
                .height(60)
                .aspectRatio(1)
                .margin(5)
            })
          }
        }
        //.alignItems(HorizontalAlign.End)
        //.justifyContent(FlexAlign.SpaceAround)
        .padding($r('app.float.course_item_padding'))
      }
      //.alignItems(HorizontalAlign.Start)
      //.justifyContent(FlexDirection.Column)

    }
    .clip(true)
    .borderRadius($r('app.float.normal_border_radius'))
    .backgroundColor($r('app.color.start_window_background'))
    //.height($r('app.float.course_item_height'))
    .height(300)
  }
}