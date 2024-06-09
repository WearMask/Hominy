import { router } from '@kit.ArkUI';
import { FaultLogger } from '@kit.PerformanceAnalysisKit';
import ClassifyModel from '../viewmodel/ClassifyModel';
import ClassifyViewModel from '../viewmodel/ClassifyViewModel';
import { constant } from '@kit.ConnectivityKit';
import Constants from '../common/constants/Constants';
import ClassityItem from '../view/ClassityItem';
import CourseModel from '../viewmodel/CourseModel';
import CourseItem from '../view/CourseItem';

@Observed
class LinkData{
  tabId : number
  tabName : string
  id : number
  courseName : Array<string>
  imgUrl : Array <Array<string>>
  //da : LinkData
  constructor(tabId:number,tabName:string,id:number,courseName:Array<string>,imgUrl:Array<Array<string>>) {
    this.tabId = tabId;
    this.tabName = tabName;
    this.id = id;
    this.courseName = courseName;
    this.imgUrl = imgUrl;
    //this.da = da;
  }
}

export class TabItem2 {
  position:number;
  superName:string;

  constructor(position:number,superName:string) {
    this.position = position;
    this.superName = superName
  }
}

// export class  CourseItem{
//   tag:boolean;
//   index:number;
//   courseName:Array<string>;
//   imageUrl:Array<Array<string>>;
//
//   constructor(tag:boolean,index:number,courseName:Array<string>,imageUrl:Array<Array<string>>) {
//     this.tag = tag;
//     this.index = index;
//     this.courseName = courseName;
//     this.imageUrl = imageUrl;
//   }
// }

@Entry
@Component
struct Page {
  @State message: string = 'Hello World';
  @State tabArr: Array<String> = ['食品','电器','洗护','女装','手机','健康','男装','美妆','电脑','运动','内衣'];
  @State arr: LinkData[] = [
      new LinkData(1,'食品',1,
      ['休闲食品','粮油调味','乳品饮料','冲饮谷物','方便速食','茗茶'],
      [['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png']
      ]),
    new LinkData(2,'电器',2,
      ['休闲食品','粮油调味','乳品饮料','冲饮谷物','方便速食','茗茶'],
      [['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png']
      ]),
    new LinkData(3,'洗护',3,
      ['休闲食品','粮油调味','乳品饮料','冲饮谷物','方便速食','茗茶'],
      [['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png'],
        ['https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png','https://img13.360buyimg.com/img/jfs/t1/185008/26/33606/2587/641973cbFd5acd3e9/ad0294917f47e6b8.png']
      ]),
  ]
  @State currentClassify: number = 0;
  @State requestSucess: Boolean = false;
  private classifyList: Array<ClassifyModel> = [];
  private  classifyScroller: Scroller = new Scroller();
  private  scroller:Scroller = new Scroller();

  @State superId: number = 0;

  aboutToAppear(): void {
    setTimeout(()=>{
      this.classifyList = ClassifyViewModel.getLinkData();
      this.requestSucess = true;
    },Constants.LOADING_DURATION)
  }
@Builder ClassifyHeader(classifyName:string){
  Row(){
    Text()
      .fontSize($r('app.float.header_font_size'))
      .fontColor($r('app.color.base_font_color'))
      .fontFamily($r('app.string.hei_ti_medium'))
      .fontWeight(Constants.TITLE_FONT_WEIGHT)
  }
  .padding({
    left:$r('app.float.item_padding_left')
  })
  .height($r('app.float.classify_item_height'))
  .width(Constants.FULL_PERCENT)
  .backgroundColor($r('app.color.base_background'))
}
  classifyChangeAction(index:number,isClassify:boolean){
    if(this.currentClassify !== index){
      this.currentClassify = index;
      if(isClassify){
        this.scroller.scrollToIndex(index)
      }else {
        this.classifyScroller.scrollToIndex((index))
      }
    }
  }


  build() {
    Stack({alignContent:Alignment.Top}){
      Flex({}) {
        Text('<')
          .fontSize(20)
          .lineHeight(40)
          .width(40)
          .borderRadius('0.00vp')
          .textAlign(TextAlign.Center)
          .onClick(() => {
            router.push({ url: 'pages/Index' })
          })
        TextInput({ text: '地球仪' })
          .height(40)
          .width('80%')
          .fontSize(14)
          .padding({
            left: 10
          })

          .margin({
            left: 10
          })


          .padding({
            top: 5,
            left: 10,
            right: 10
          })
          // .width('100%')
          // .height(45)
          .borderColor(Color.Gray)
          .borderRadius('25')
      }
      .margin({
        top:5
      })
      Stack({alignContent:Alignment.BottomStart}){
        Row(){
          if(this.requestSucess){
            List({scroller:this.classifyScroller}){
              ForEach(this.classifyList,(item:ClassifyModel,index?:number)=>{
                // ListItemGroup({
                //   header:this.ClassifyHeader(''),
                //   space:Constants.COURSE_ITEM_PADDING
                // })
                ListItem(){
                  ClassityItem({
                    classifyName:item.classifyName,
                    isSelected:this.currentClassify === index,
                    onClickAction:()=>{
                      if(index !== undefined){
                        this.classifyChangeAction(index,true)
                      }
                    }
                  })
                }
              },(item:ClassifyModel)=>item.classifyName + this.currentClassify)
            }
            .height(Constants.FULL_PERCENT)
            .width($r('app.float.classify_item_width'))
            .backgroundColor($r('app.color.classify_background'))
            .scrollBar(BarState.Off)
            .margin({
              top:100
            })
            List({scroller:this.scroller}){
              ForEach(this.classifyList,(classifyItem:ClassifyModel)=>{
                ListItemGroup({
                  //header:this.ClassifyHeader(classifyItem.classifyName),
                  space:Constants.COURSE_ITEM_PADDING
                }){
                  ForEach(classifyItem.courseList,(courseItem:CourseModel)=>{
                    ListItem(){
                      CourseItem({ itemStr: JSON.stringify(courseItem) })
                    }
                  },(courseItem:CourseModel)=> `${courseItem.courseId}`)
                }
              },(item:ClassifyModel)=>`${item.classifyId}`)
            }
            .padding({
              left:$r('app.float.item_padding_left'),
              right:$r('app.float.course_item_padding')
            })
            .margin({
              top:100
            })
            .sticky(StickyStyle.Header)
            .layoutWeight(1)
            .width('100%')
            .height('100%')
            .edgeEffect(EdgeEffect.None)
            .onScrollIndex((start:number)=>
            this.classifyChangeAction(start,false)
            )
          } else{
            Text($r('app.string.loading'))
              .fontFamily($r('app.string.hei_ti_medium'))
              .textAlign(TextAlign.Center)
              .height(Constants.FULL_PERCENT)
              .width(Constants.FULL_PERCENT)
          }
        }
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
              Image('https://img11.360buyimg.com/jdphoto/s130x100_jfs/t1/48787/24/12910/3390/5d9c4b12Ee63270e4/4481f5b3dbad979d.png')
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
          .width('100%')
          .height(50)

        }
        .backgroundColor(Color.White)
      }

    }
  }
}
@Component
struct TabItem{
  @Prop item:string;
  @Prop index:number
  build() {
    TabContent(){
      Column(){
        Text('内容1')
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.White)
      .margin({
        top:20
      })
    }
    .tabBar(this.item)
    // Text(this.item)
    //   .fontSize(15)
  }
}
