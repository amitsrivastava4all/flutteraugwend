import './two.dart';
void main(){
  A obj = new A();
  obj.show();
  Function myType = obj.show;
  print(myType.runtimeType);
  print(A.disp());
  String msg = "Hello";
  var x = 190;
  print(x.runtimeType);
  var w = "Hello";
  print(w.runtimeType);
  int a = 100;
  int b = 200;
  //int c = a + b;
  print("A is $a");
  print("Sum is ${a+b}");

}