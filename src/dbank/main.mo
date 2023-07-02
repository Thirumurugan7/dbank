import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor DBank{
  stable var  currentVal:Float = 3;

  //currentVal:=5; usage of assignment after nullifiy the stable keyword's orthogonal persistence effect
let id = 53;

  // if there is any small changes that dont affect the state of blockchain happens, then all the state revert back to initialised one due to its nature i.e all the increment and decrement actions on the value will be reverted 
  // to prevent that stable kesdyword can be used

  stable var startTime = Time.now();

  Debug.print(debug_show(startTime));

  public func increMent(amount:Float){
    currentVal+=amount;
    Debug.print(debug_show(currentVal));
  };

public func decreMent(amount: Float){
 let temp : Float = currentVal-amount;
 if(temp >= 0){
  currentVal-=amount;
  Debug.print(debug_show(currentVal));
 }
 else{
  Debug.print("subtraction overflow error in decrement");
 
 
 }
  
};

public query func checkBalance(): async Float{
  return currentVal;
};

public func Compound(){
  let currentTime = Time.now();
  let timeElasedInNS = currentTime - startTime;
  let timeElasedInS = timeElasedInNS / 1000000000;
  currentVal := currentVal * (1.01 ** Float.fromInt(timeElasedInS));
  startTime:=currentTime;
}
}
