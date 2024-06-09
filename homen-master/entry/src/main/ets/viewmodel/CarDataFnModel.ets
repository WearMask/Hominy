import CarData from './CarDataModel'

export default class CarFnModel{
  setArr(prams:CarData,arr:Array<CarData>){
      if(prams.dijia){
        arr.push(prams)
        return arr
      }else{
        arr.push(prams)
        return arr
      }
  }
}