var arr = [10,20,30,40,50];
void forEach(fn){
  for(int i =0 ; i<arr.length; i++){
    fn(arr[i]);
  }
}
void printing(num){
  print("Num is "+num.toString());
}
void main(){
  //forEach(printing);
  forEach((num)=>print("Num is "+num.toString()));
}