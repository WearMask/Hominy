export  default class CourseModel{
   classifyId: number;
   courseId:number;
   courseName:string;
   imageUrl:Array<Resource>;

  constructor(classifId:number,courseId:number,courseName:string,imageUrl:Array<Resource>) {
    this.classifyId = classifId;
    this.courseId = courseId;
    this.courseName = courseName;
    this.imageUrl = imageUrl;
  }
}