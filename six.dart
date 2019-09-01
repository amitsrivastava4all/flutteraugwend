
import 'dart:math';

void main(){
  //loop(10,cube);
  loop(10,(num)=>pow(num,3));
  loop(10,evenOdd);
}
loop(n, fn){
for(int i = 1; i<=n; i++){
print(fn(i));
}
}
var cube = (num)=>pow(num, 3);
var evenOdd = (num)=>num%2==0?"Even $num":"Odd $num";

// cube(num){
//   return pow(num, 3);
// }