import Debug "mo:base/Debug";

actor DBank{
  var currentVal = 3;

  currentVal:=5;
let id = 53;

  

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
  Debug.print("subtraction overflow error in decrement")
 }
  
};

public query func checkBalance(): async Nat{
  return currentVal;
};
  // public func greet(name : Text) : async Text {
  //   return "Hello, " # name # "!";
  // };
}
