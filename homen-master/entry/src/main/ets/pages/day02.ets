interface  person  {
  dance: (rap:string)=> void
}

let test : person = {
    dance : (rap:string)=>{
      console.log('saber',rap)
    }
}
test.dance('测试')
let fn1 = (params:number,params1:number,params2:number)=>{
  let sum = params + params1 + params2;
  return sum
};

let n  = fn1(87,98,56)

enum a{
  name = "saber"
}
console.log(a.name)
