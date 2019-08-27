int square(x){
  return x * x;
}
void main(){
  int a = 100;
  int b = 200;
  print("A is "+a.toString()+" and B is "+b.toString());
  String msg = "Sum of $a and $b is ${a+b}";
  print(msg);
  print("Square is ${square(2)}");
  
}