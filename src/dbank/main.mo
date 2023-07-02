import Debug "mo:base/Debug";

actor DBank{
  stable var  currentVal = 3;

  //currentVal:=5; usage of assignment after nullifiy the stable keyword's orthogonal persistence effect
let id = 53;

  // if there is any small changes that dont affect the state of blockchain happens, then all the state revert back to initialised one due to its nature i.e all the increment and decrement actions on the value will be reverted 
  // to prevent that stable kesdyword can be used

  public func increMent(amount:Nat){
    currentVal+=amount;
    Debug.print(debug_show(currentVal));
  };

public func decreMent(amount: Nat){
 let temp : Int = currentVal-amount;
 if(temp >= 0){
  currentVal-=amount;
  Debug.print(debug_show(currentVal));
 }
 else{
  Debug.print("subtraction overflow error in decrement");
 
 
 }
  
};

public query func checkBalance(): async Nat{
  return currentVal;
};
  // public func greet(name : Text) : async Text {
  //   return "Hello, " # name # "!";
  // };
}
