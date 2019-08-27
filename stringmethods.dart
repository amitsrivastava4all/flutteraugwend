void compare(name){
if(name.startsWith("Ra")){
      print(name);
    }
}
void main(){
  var name  = ["fsdf","gfdg"];
  List<String> names= ["Amit","Anil","Ram","Rajesh"];
  names.forEach(compare);
  /*
  for(int i = 0 ; i<names.length; i++){
    if(names[i].startsWith("Ra")){
      print(names[i]);
    }
  }*/
  print("************************************");
  String a = "Amit";
  print(a.substring(1));
  print(a.substring(1,3));
  print(a.substring(1,1));
  for(int i =0 ;i<a.length; i++){
    print(a[i]);
  }
  print(a.startsWith("Am"));
  print(a.endsWith("it"));
  


}