abstract class Account{
  int accountNumber;
  double balance;
  String bank;
   void emi();

  // Account(){
  //   bank = "SBI";
  //   print(" I am a Default Cons of Account");
  // }
  Account(int acc, double bal){
    accountNumber = acc;
    balance = bal;
    print(" I am a Param Cons of Account");
  }
  Account.myName(){
    print("Named Default Cons");
  }
  void roi(){
    print("5%");
  }
}
class SavingAccount extends Account{
 // SavingAccount():super(){  // Implicit Super
// SavingAccount(){
//     print("i am a default cons of SavingAccount");
//   }
// SavingAccount():super(11,9999){
//     print("i am a default cons of SavingAccount");
//   }
SavingAccount():super.myName(){
    print("i am a default cons of SavingAccount");
  }
  @override
  void roi(){
    super.roi();
    print("7%");
  }

  @override
  void emi() {
    // TODO: implement emi
  }
}
void main(){
 // var account = Account(100,9999);
  var sa = SavingAccount();
  sa.roi();
}