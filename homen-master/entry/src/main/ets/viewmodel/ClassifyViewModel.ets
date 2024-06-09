import ClassifyModel from './ClassifyModel';
import CourseModel from './CourseModel';
import LinkDataModel from './LinkDataModel';

class ClassifyViewModel{
  getLinkData(): Array<ClassifyModel>{
    let linkDataList : Array<ClassifyModel> = [];
    let superId: number = 0;
    LINK_DATA.forEach((item:LinkDataModel)=>{
      if(superId != item.superId){
        let classifyItem:ClassifyModel = new ClassifyModel(item.superId,item.superName,[])
        linkDataList.push(classifyItem);
      }
      let courseItem: CourseModel = new CourseModel(superId,item.id,item.courseName,item.imageUrl)
      linkDataList[linkDataList.length-1].courseList.push(courseItem)
      superId = item.superId
    });
    return linkDataList;
  }
}

let classifyViewModel = new ClassifyViewModel();

export  default classifyViewModel as ClassifyViewModel;

const LINK_DATA: LinkDataModel[] = [
  new LinkDataModel(1,'食品',1,'休闲食品',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(1,'食品',2,'粮油调味',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(1,'食品',3,'乳品饮料',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(1,'食品',4,'冲饮谷物',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(1,'食品',5,'方便速食',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(1,'食品',6,'茗茶',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(2,'电器',7,'中式厨电',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(2,'电器',8,'西式厨电',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(2,'电器',9,'个护健康',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(2,'电器',10,'大家电',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(2,'电器',11,'环境电器',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(2,'电器',12,'厨卫大电',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(3,'洗护',13,'纸品湿巾',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(3,'洗护',14,'身体护理',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(3,'洗护',15,'衣物清洁',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(3,'洗护',16,'洗发护发',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(3,'洗护',17,'口腔护理',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(3,'洗护',18,'清洁工具',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(4,'女装',19,'热卖选购',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(4,'女装',20,'女士上衣',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(4,'女装',21,'裤装',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(4,'女装',22,'裙装',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(4,'女装',23,'外套',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),
  new LinkDataModel(4,'女装',24,'特色类目',[$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8'),$r('app.media.ad0294917f47e6b8')]),


]