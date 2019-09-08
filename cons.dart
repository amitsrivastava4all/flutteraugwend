class A{
  int _x;
  int y;
  A(){
    print("I am Default Cons");
  }
  A.mycons(int x){
    if(x>=10000){
      print("Invalid X Value Not Allowed");
      return ;
    }
    this._x = x;
    print("Single Param Cons");
  }
  // A.cons2(x,y){
  //   this._x = x;
  //   this.y = y;
  // }
  //A.cons2(this._x, this.y); // ShortHand Way
  String toString(){
    return "X is ${this._x} and Y is ${this.y}";
  }
}
void main(){
  A obj = A();
  //obj.x = 10000;
  A obj2 = A.mycons(990);
  //A obj3 = A.cons2(100, 200);
  //print(obj3);
}