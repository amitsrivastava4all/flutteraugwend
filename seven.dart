void main(){
  var list = [10,20,30, "Hello",[1000,200]];
  List<int> l = [10,20,30];
  add([10,20]);
  add([10,20,30,40,50]);
  add2(1000);
  add3(z:10000);
  disp(show);
  disp(output);
}
calc(){
  add(){

  }
  sub(){

  }
  mul(){

  }
  div(){
    
  }
}
disp(Function fn){
  print("Disp Call");
  fn();
}
output(){
print("output");
}
show(){
  print("Show");
}
// Positional Para
int add2([x=0,y=0,z=0]){
  return x + y + z;
}
// Named Para
int add3({x=0,y=0,z=0}){
  return x + y + z;
}
// N Para
int add(List<int> l){
  int sum = 0;
  for(int i = 0; i<l.length; i++){
    print("Element is ${l[i]}");
    sum+=l[i];
  }
  return sum;
}