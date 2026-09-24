import 'coinStack.dart';

void main() {
  final stackA = CoinStack([10, 20, 50, 20]); 
  final stackB = CoinStack([20, 50]);         
  final stackC = CoinStack([50, 50]);         
  final stackD = CoinStack([100]);            

  print(stackA > stackB);  
  print(stackB < stackA);  
  print(stackA == stackC); 
  print(stackA >= stackC); 
  print(stackB <= stackA); 

  final combined = stackA + stackB;
  print(combined); 

  final remaining = stackA - stackB;
  print(remaining); 

  final invalidSub = stackA - stackD;
  print(invalidSub); 
}