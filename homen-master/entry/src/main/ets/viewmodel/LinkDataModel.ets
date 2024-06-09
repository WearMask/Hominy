export default class LinkDataModel{
  superId:number;
  superName:string;
  id:number;
  courseName:string;
  imageUrl:Array<Resource>;

  constructor(superId:number,superName:string,id:number,courseName:string,imageUrl:Array<Resource>) {
    this.superId = superId;
    this.superName = superName;
    this.id = id;
    this.courseName = courseName;
    this.imageUrl = imageUrl;
  }
}
