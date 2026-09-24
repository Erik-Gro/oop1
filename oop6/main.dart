import 'animals.dart';

void main() {
  final Goldfish nemo = Goldfish();
  final Eagle majo = Eagle();
  final Duck donald = Duck();

  print('--- 1. Polymorphism & Inheritance Checks ---');
  
  nemo.move();
  nemo.makeSound();
  nemo.breatheUnderWater();
  print('');

  majo.move();
  majo.makeSound();
  majo.fly();
  print('');

  print('--- 2. Testing `globalFly` Function ---');
  globalFly(majo);   
  globalFly(donald);
  globalFly(nemo);   
  globalFly("Airplane"); 
  globalFly(null);  
}