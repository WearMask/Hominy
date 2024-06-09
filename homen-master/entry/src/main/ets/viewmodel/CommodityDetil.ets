import  UserEvaluate  from './UserEvaluateList';

export default  class CommodityDetil{
  image:string;
  name:string;
  //evaluate:Array<UserEvaluate>
  tag:Array<string>
  haopin:string
  price:number
  color:Array<string>
  baozhang:Array<string>
  fenqi:Array<string>
  cid:number

  constructor(image:string,name:string,tag:Array<string>,haopin:string,price:number,color:Array<string>,baozhang:Array<string>,fenqi:Array<string>,cid:number) {
    this.image = image;
    this.name = name
    // this.evaluate = evaluate;
    this.tag = tag;
    this.haopin = haopin;
    this.price = price;
    this.baozhang = baozhang;
    this.fenqi = fenqi;
    this.color = color;
    this.cid = cid;
  }
}

export  const Commodity:Array<CommodityDetil> = [
  new CommodityDetil('https://m.360buyimg.com/mobilecms/s750x750_jfs/t1/195189/22/46925/230527/666275d3Faa01e556/f0157f913a5e21f8.jpg!q80.dpg.webp',
    '蓝月亮 洁净洗衣液（自然清香）2kg*6瓶 家庭装整箱批发【企业专属】',
    ['清新好闻(21)','清洁力强(15)','容易清洗(4)','操作简便(4)','做工精湛(4)','不会受伤(3)','分量充足(3)','不易褪色'],'98%',
    220,['【人气爆买】12kg|深层去污','【实惠单瓶】500g|经济适用','【抢手好货】4kg|强效去污'],['1年过敏换新','半年适用换新','囤货无忧补贴'],['不分期','￥75.33 * 3期','￥11.22 * 24期'],1)
]

