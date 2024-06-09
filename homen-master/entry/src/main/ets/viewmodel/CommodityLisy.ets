export default class  CommodityList{
  image:string;
  name:string;
  tag:Array<string>;
  price:number;
  buying:number;
  tid:number;

  constructor(image:string,name:string,tag:Array<string>,price:number,buying:number,tid:number) {
    this.image = image;
    this.name = name;
    this.tag = tag;
    this.price = price;
    this.tid = tid;
    this.buying = buying;
  }
}

export const CommodeityLsitData:Array<CommodityList> = [
  new CommodityList('https://m.360buyimg.com/seckillcms/jfs/t1/227396/36/19635/188129/666026b8F0d1a93d3/3fe9759a82b0cc45.jpg.webp','蓝月亮 洁净洗衣液 2kg*6瓶',['自营','PLUS 95折','30天保价'],220,35,1),
  new CommodityList('https://m.360buyimg.com/seckillcms/jfs/t1/189047/5/46711/99720/6659c55cF1b3f9932/224990ebc6bbed41.jpg.webp','九州风神 风冷 阿萨辛4',['自营','2千人加购','30天保价'],499,27,2),
  new CommodityList('https://m.360buyimg.com/seckillcms/jfs/t1/137095/6/42979/129796/662b14adFbc258730/44d011bdd5d5248f.jpg.webp','三只松鼠 蚕豆 205g/袋',['自营','8千人加购','30天保价'],5.9,26,3),
  new CommodityList('https://m.360buyimg.com/seckillcms/jfs/t20270423/236946/23/14954/44625/66272b62F86420b42/4b78789e176fb662.jpg.webp','立白 柠檬洗洁精 1kg',['包邮','4千人加购','7天保价'],8.9,35,4),
  new CommodityList('https://m.360buyimg.com/seckillcms/jfs/t1/225738/9/16930/74150/663ec94eF430fa017/2c2be081dee2b799.jpg.webp','鲁本斯 超软重彩油画棒',['自营','PLUS 95折','30天保价'],34.9,36,5),
]