import CourseModel from './CourseModel'

export default  class ClassifModel{
  classifyId:number;
  classifyName:string;
  courseList:Array<CourseModel>;

  constructor(classifyId:number,classifyName:string,courseList:Array<CourseModel>) {
    this.classifyId = classifyId;
    this.classifyName = classifyName;
    this.courseList = courseList;
  }
}