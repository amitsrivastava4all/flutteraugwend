import './setget.dart';
void main(){
  Employee ram = Employee(1001, "Ram", 9090);
  print(ram);
  ram.salary= 78787;
  print(ram);
  print(ram.salary);
}