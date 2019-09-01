void main(){
  exit:
  for(int i =1; i<=3; i++){
    for(int j = 1; j<=3; j++){
      if(i>j){
        break exit;
      }
      print("I is $i and J is $j");
    }
  }
  print("After Break");
}