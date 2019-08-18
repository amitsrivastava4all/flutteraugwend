void main() {
  int a = 100;
  print(a.runtimeType.runtimeType);
  print("A is $a");
  var r;
  print(r);
  String e = "Hello";
  print(e.runtimeType.runtimeType);
  bool w;
  var ee = true;
  Set<int> sets = {10, 20, 20, 20, 50};
  print(sets);
  List l = [10, 20, 30, "Hello", true, 40, 50];
  List<String> l2 = ["Hello", "Ok"];
  l2.forEach((e) => print(e));
  Map<String, int> temp = new Map<String, int>();
  temp["delhi"] = 30;
  temp["shimla"] = 10;
  print(temp["delhi"]);
  List<A> ff = [A(), new A()];
}

class A {}
