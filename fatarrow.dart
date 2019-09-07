
show(){
  print("Function Declare");
}
void show2() =>print("I am Show"); // Java
int add(int x, int y)=> x + y;
var e = (){
  print("Anonymous Function");
};
var f = ()=>print("I am Fat Arrow ");  // JS
disp(ele){
  print("ELE "+ele.toString());
}
class Item{
  int id;
  String name;
  double price;
  Item(int id, String name, double price){
    this.id = id;
    this.name = name;
    this.price = price;
  }
  String toString(){
    return "Id is ${this.id} Name is ${this.name} Price is ${this.price}";
  }

}
void main(){
  
   
  // Reduce
  var arr2 = [100,200,300,400,500];
  var total = arr2.reduce((acc,ele)=>acc+=ele);
  print(total);
  var map = {"items":[Item(1,"A",999), Item(1,"B",2222)]};
  print(map['items']);

List<int> prices = [100,200,300,400,500];
// Rs 100.00 + GST 
// Array Copy
var tt =[10,20,30,40];  
var hh = tt.iterator;
while(hh.moveNext()){
  print(hh.current);
}
var mm = tt;
//mm[0] = 10000;
print("****************************************");
// print(mm);
// print(tt);
var nn = tt.map((t)=>t);
var h1 = nn.toList();
h1[0] = 33333;
print(tt);
print(h1);  


var arr = prices.map((price)=>"Rs "+(price + price * 0.10).toString());
print(arr);
  List<Item> items = new List<Item>();
  items.add(new Item(1001, "Nike",9000));
  items.add(new Item(1002, "Puma",7000));
  items.forEach((item)=>print(item));
  List<String> list = new List<String>();
  List l = [100,200,300,400];
  // for(int i = 0; i<l.length; i++){
  //   print(l[i]);
  // }
  l.forEach(disp);
  
  l.forEach((t)=>print(t));
  l.forEach((r){
    print(r);
  });
}