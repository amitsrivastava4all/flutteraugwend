Calc(x,y){
add(){
  return x + y;
}
sub(){
return x - y;
}
div(){
return x / y;
}
return [add,sub,div];  // function + scope
}
void main(){
  var m = Calc(100,200);
  print(m[0]());
}
