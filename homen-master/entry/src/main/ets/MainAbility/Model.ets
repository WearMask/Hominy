//1
interface brand{
  name:string,
  color:string,
  ram:number,
  disk:number,
  playGame:(params:string)=>void,
  watchVideo:(params:string)=>void,
  add:(n:number,n2:number)=>void
}

let computer:brand ={
  name:'联想电脑',
  color:'green',
  ram:4,
  disk:256,
  playGame:(params)=>{
    console.log(params)
  },
  watchVideo:(params)=>{
    console.log(params)
  },
  add:(n,n2)=>{
    let sum:number = n +n2;
    return sum;
  }
}

console.log(computer.name);
console.log(computer.color);
console.log('运存',computer.ram);
console.log('内存',computer.disk);

computer.playGame('高达破坏者');
computer.watchVideo('gundamSeed:Freedom');
let num = computer.add(100,200);
console.log('总数',num);

//2
let height:string = '172cm'
let age:number = 28;
let weight:string = '74kg';
let love:string = '做小游戏';

//3
const bigCity:string = '四川';
const  city:string = '成都';

//4
//let A1:number = 'sss'
//let A2:any = '222'

let b1:string = 'saber';
let b2:number|string = 12;

//5
let arr: string[] = ['生蚝','面包','鱼子酱','软壳蟹'];
console.log(arr[0]);

//6
function fn(params:string){
  console.log(params)
}
fn('晓之车');

//7
let fn2 = (params:string)=>{
    console.log(params)
}

fn2('刘亦菲')

//8
function fn3(n1:number,n2:number){
  let sum:number = n1 * n2;
  console.log('乘积',sum)
};
fn3(100,100);

//9
let fn4 = (arr:Array<string>,index:number)=>{
  console.log('名字',arr[index])
}
let arr2:string[] = ['张斌','夏光辉','张静']
fn4(arr2,2)

//10
let saray:number = 82;
let appy:string = '15斤';
let bannan:string = '20斤';
let orange:string = '16公斤';
let appayNum:number = 10;
let orangeNum:number = 8;

function fn5(n1:number,n2:number){
  let sum:number = n1 * n2;
  // console.log('单价',n1,'重量',n2,'小计',sum)
  return sum
};

let s1 = fn5(appayNum,5);
let s2 = fn5(orangeNum,4);

console.log('---------------消费总额----------------')
console.log('消费',s1+s2);
console.log('---------------商店库存----------------')
console.log('苹果',appy);
console.log('香蕉',bannan);
console.log('橘子',orange);
console.log('---------------消费明细----------------')
console.log('苹果:'+appayNum+'元重量'+5+'斤'+s1+'元')
console.log('橘子:'+orangeNum+'元重量'+4+'斤'+s2+'元')







