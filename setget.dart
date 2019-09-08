class Employee{
  int id;
  String name;
  double _salary;
  Employee(int id, String name, double salary){
    this.id = id;
    this.name = name;
    this._salary = salary;
  }
  set salary (double sal){
    if(sal<0){
      print("U Enter Invalid Salary ");
      return ;
    }
    this._salary = sal;
  }
  get salary {
    print("Calling Getter ");
    return this._salary;
  }
  String toString(){
    return "Id $id Name $name Salary $_salary";
  }
}
