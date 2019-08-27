void main(){
  var gg = (){
    print("I am Anonymous");
     print("I am Anonymous");
  };
  var m2 = (num)=>print(num);  // Fat Arrow Function
  var arr = [10,20,30,40,50];
  arr.forEach((y)=>print(y));
  arr.forEach(m2);
  List<int> arr2 = [10,20,30,40,50];
  show();
  var m = 100;
  int n = 100;
  var e = ()=>"I am Arrow";
  print(e());
  Function e2 = ()=>"I am Arrow2";
  print(e2());
}

String show(){
  return "I am Show";
}