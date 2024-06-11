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
    220,['【人气爆买】12kg|深层去污','【实惠单瓶】500g|经济适用','【抢手好货】4kg|强效去污'],['1年过敏换新','半年适用换新','囤货无忧补贴'],['不分期','￥75.33 * 3期','￥11.22 * 24期'],1),
  new CommodityDetil('https://m.360buyimg.com/mobilecms/s750x750_jfs/t1/189047/5/46711/99720/6659c55cF1b3f9932/224990ebc6bbed41.jpg!q80.dpg.webp',
    '九州风神 （DEPCOOL）阿萨辛4白色风冷散热器（7热管280w/双模散热/内...',
    ['简单方便(21)','运行安静(15)','做工一流(4)','散热超快(4)','简洁大方(4)','稳定性佳(3)'],'97%',
    499,['阿萨辛4白-7热管/内存全避位，1个','【实惠单瓶】500g|经济适用','【抢手好货】4kg|强效去污'],['1年过敏换新','半年适用换新','囤货无忧补贴'],['不分期','￥75.33 * 3期','￥11.22 * 24期'],2),
  new CommodityDetil('https://img14.360buyimg.com/n1/jfs/t1/192462/25/45769/182972/66480697F32e5edde/6bd386b655da8ef3.jpg',
    '三只松鼠兰花豆牛肉味 坚果炒货零食地方特产小吃蚕豆205g/袋',
    ['美味可口(21)','酥脆可口(15)','分量充足(4)','新鲜十足(4)','精美雅致(4)','食用方便(3)','方便实惠(3)','做工精细(3)','完好无损(3)','用料扎实(2)','营养丰富(2)'],'97%',
    5.9,['三只松鼠牛肉味兰花豆，1个','【实惠单瓶】500g|经济适用','【抢手好货】4kg|强效去污'],['1年过敏换新','半年适用换新','囤货无忧补贴'],['不分期','￥75.33 * 3期','￥11.22 * 24期'],3),
  new CommodityDetil('https://m.360buyimg.com/seckillcms/jfs/t20270423/236946/23/14954/44625/66272b62F86420b42/4b78789e176fb662.jpg.webp',
    ' 立白柠檬洗洁精1kg桶果蔬清洗快速去油洗食品用洗涤剂洗碗液洗涤灵',
    ['不会受伤(21)','清洁力强(15)','清新好闻(4)','操作简便(4)','美观漂亮(4)','高端大气(3)','分量充足(3)','身体无害(3)','做工精湛(3)','容易清洗(2)','柔软舒适(2)'],'99%',
    8.9,['店铺爆款柠檬洗洁精2斤桶装','【实惠单瓶】500g|经济适用','【抢手好货】4kg|强效去污'],['1年过敏换新','半年适用换新','囤货无忧补贴'],['不分期','￥75.33 * 3期','￥11.22 * 24期'],4),
  new CommodityDetil('https://m.360buyimg.com/seckillcms/jfs/t1/225738/9/16930/74150/663ec94eF430fa017/2c2be081dee2b799.jpg.webp',
    '【全网低价】鲁本斯超软重彩油画棒48色套装 绘画美术专用软性彩色蜡笔可水洗油画棒 儿童手绘涂鸦笔工具0119328',
    ['不会受伤(21)','清洁力强(15)','清新好闻(4)','操作简便(4)','美观漂亮(4)','高端大气(3)','分量充足(3)','身体无害(3)','做工精湛(3)','容易清洗(2)','柔软舒适(2)'],'97%',
    34.9,['入门款24色','【实惠单瓶】500g|经济适用','【抢手好货】4kg|强效去污'],['1年过敏换新','半年适用换新','囤货无忧补贴'],['不分期','￥75.33 * 3期','￥11.22 * 24期'],5),
]

