List<String> getShoes(){
  return ["Puma","Nike"];
}
List<String> getJeans(){
  return ["Live","Levis"];
}

List<String> getShirts(){
  return ["PE","UC"];
}
Map<String,List<String>> showAll(){
 List<String> shoes =  getShoes();
  List<String> jeans =  getJeans();
   List<String> shirts =  getShirts();
   Map<String,List<String>> map = {"shoe":shoes,"jean":jeans};
  print(map["shoe"]);
  return map;
  //return ["Puma","Nike"];
}

void main(){
  Set<String> unique = {"ram","ram","shyam"};
  print(unique);
  var map2 = {"id":1001, "name":"Ram","phone":[100,200,300]};
  var map = showAll();
  print("All Map $map");
  List arr = [10,20,30,true,"Hello"];
  var arr2 = [10,20,true, "Hello"];
  List<String> arr3 = ["Hello","Xyz"];

  
  StringBuffer sb = new StringBuffer();
  sb.write("fgsdf");
  sb.write("fgsdfg");
  String r = "Hello";
  String r1 = 'Hello';
  String r2 = 'ghsdjkg'
  'ghfsdkjgds'
  'hfgsdjhgjhkfdsfhjkds';
  String r3 = """hfghjsdgfhjds
  fshdkjfds
  fhsdkjhf
  fsdhgk""";
  print(r2);
  bool e1 = true;
  num qq = 1009.20;
  double ee = 90.20;
  int a =100;
  print("A is $a");
  print(a.runtimeType);
  var b  =200;
  var c = 90.20;
  var d = "Hello";
  //d = 1000.200;

  print("B is $b");
  print(b.runtimeType);
}