void main(){
  // Const only create compile time constants
  const a = 100;  // JS Style  
  const int b = 200; // Java Style
  final int b2 = 200;
  final cc = 999;
  final List<int> list = [10,20,30];
  list.add(1000);
  //list = [1000,2000,3000];  
  print("List is $list");
// Final is used to create compile time and runtime constant
 // const t1 = new StringBuffer(100);
  final StringBuffer sb = new StringBuffer(100);
  sb.write("Hello");
 // sb = new StringBuffer(200);



   
}