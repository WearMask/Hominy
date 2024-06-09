export default class UserEvaluateList{
  username:string;
  avater:Resource;
  evaluate:string;
  image:Array<string>|null;

  constructor(username:string,avater:Resource,evaluate:string,image:Array<string>|null) {
    this.username = username;
    this.avater = avater
    this.evaluate = evaluate;
    this.image = image;
  }
}

class Evaluate{
  cid:number;
  evaluate:Array<UserEvaluateList>

  constructor(cid:number,evaluate:Array<UserEvaluateList>) {
    this.cid = cid;
    this.evaluate = evaluate
  }
}

export const UserEvaluate:Array<Evaluate> = [
  new Evaluate(1,[new UserEvaluateList('saber', $r('app.media.ad0294917f47e6b8'), '洁净力：洁净力可以，洗的挺干净的，不错产品香味：香味也挺好闻的，不错使用感***衣机机洗的，还不错，挺好的包装外观：包装很好，很严实，没有破护色效果：这个没太注意，还可以吧留香效果：还可以，挺好的',
    ['https://img30.360buyimg.com/n0/s48x48_jfs/t1/236732/8/13450/68003/663e2382F9e9d11c0/f3345404ee348a5f.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/245859/9/8767/111921/663e2383F30087901/dd95aa97df4f6584.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/173208/37/45687/65789/663e2384F629a616a/0997dc8d4d1ed487.jpg']
  )]),
  new Evaluate(2,[new UserEvaluateList('saber', $r('app.media.ad0294917f47e6b8'), '洁净力：洁净力可以，洗的挺干净的，不错产品香味：香味也挺好闻的，不错使用感***衣机机洗的，还不错，挺好的包装外观：包装很好，很严实，没有破护色效果：这个没太注意，还可以吧留香效果：还可以，挺好的',
    ['https://img30.360buyimg.com/n0/s48x48_jfs/t1/236732/8/13450/68003/663e2382F9e9d11c0/f3345404ee348a5f.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/245859/9/8767/111921/663e2383F30087901/dd95aa97df4f6584.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/173208/37/45687/65789/663e2384F629a616a/0997dc8d4d1ed487.jpg']
  )]),
  new Evaluate(3,[new UserEvaluateList('saber', $r('app.media.ad0294917f47e6b8'), '洁净力：洁净力可以，洗的挺干净的，不错产品香味：香味也挺好闻的，不错使用感***衣机机洗的，还不错，挺好的包装外观：包装很好，很严实，没有破护色效果：这个没太注意，还可以吧留香效果：还可以，挺好的',
    ['https://img30.360buyimg.com/n0/s48x48_jfs/t1/236732/8/13450/68003/663e2382F9e9d11c0/f3345404ee348a5f.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/245859/9/8767/111921/663e2383F30087901/dd95aa97df4f6584.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/173208/37/45687/65789/663e2384F629a616a/0997dc8d4d1ed487.jpg']
  )]),
  new Evaluate(4,[new UserEvaluateList('saber', $r('app.media.ad0294917f47e6b8'), '洁净力：洁净力可以，洗的挺干净的，不错产品香味：香味也挺好闻的，不错使用感***衣机机洗的，还不错，挺好的包装外观：包装很好，很严实，没有破护色效果：这个没太注意，还可以吧留香效果：还可以，挺好的',
    ['https://img30.360buyimg.com/n0/s48x48_jfs/t1/236732/8/13450/68003/663e2382F9e9d11c0/f3345404ee348a5f.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/245859/9/8767/111921/663e2383F30087901/dd95aa97df4f6584.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/173208/37/45687/65789/663e2384F629a616a/0997dc8d4d1ed487.jpg']
  )]),
  new Evaluate(5,[new UserEvaluateList('saber', $r('app.media.ad0294917f47e6b8'), '洁净力：洁净力可以，洗的挺干净的，不错产品香味：香味也挺好闻的，不错使用感***衣机机洗的，还不错，挺好的包装外观：包装很好，很严实，没有破护色效果：这个没太注意，还可以吧留香效果：还可以，挺好的',
    ['https://img30.360buyimg.com/n0/s48x48_jfs/t1/236732/8/13450/68003/663e2382F9e9d11c0/f3345404ee348a5f.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/245859/9/8767/111921/663e2383F30087901/dd95aa97df4f6584.jpg','https://img30.360buyimg.com/n0/s48x48_jfs/t1/173208/37/45687/65789/663e2384F629a616a/0997dc8d4d1ed487.jpg']
  )])
]