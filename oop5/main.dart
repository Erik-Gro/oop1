import 'triangle.dart';

void main() {
  final myTriangle = Triangle.cm(width: 10, height: 5);

  print('--- Initial State ---');
  print(myTriangle);

  print('\n--- Testing Dynamic Getters (Task 2a & 3) ---');
  print('Height in meters: ${myTriangle.getHeight(MeasurementSystem.m)} m');
  print('Width in feet: ${myTriangle.getWidth(MeasurementSystem.feet)} ft');

  print('Area in cm²: ${myTriangle.getArea(MeasurementSystem.cm)} cm²');
  print('Area in inches²: ${myTriangle.getArea(MeasurementSystem.inch)} in²');

  print('\n--- Testing Dynamic Setters (Task 2b) ---');
  myTriangle.setHeight(MeasurementSystem.m, 2);
  myTriangle.setWidth(MeasurementSystem.inch, 10);

  print('New height in mm: ${myTriangle.heightInMm} mm');
  print('New width in mm: ${myTriangle.widthInMm} mm');
  print('Updated Area in m²: ${myTriangle.getArea(MeasurementSystem.m)} m²');

  print('\n--- Final State ---');
  print(myTriangle);
}