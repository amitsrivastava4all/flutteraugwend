// int add([int x=10, int y=20]){
//   return x + y;
// }
int add({int x=10, int y=20}){
  return x + y;
}
int adder({x=10,y=20,z=90,a=100,b=88,c=9}){
  return x + y +z + a + b + c;
}
sub(x,y){
  return x- y;
}
class Scaffold{
  Scaffold({title:'',appBar:''}){

  }
}

void main(){
  Scaffold(appBar: 'hgdskj', title:'gsdgdsg');
  print(adder(z:22222));
  print(add());
  print(add(y:8888));
  //print(add(10000));
  //print(add(100,200));
  print(sub(10,20));
  var e = (a,b){
    return a * b;
  };
  print(e(10,2));
  var e2 = (a,b)=>a/b;
  print(e2(10,2));
}