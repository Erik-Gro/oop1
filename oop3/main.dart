import 'triangle.dart';

void main() {
  final cmTriangle = Triangle.cm(width: 10, height: 5);

  print('--- Initial State ---');
  print(cmTriangle);

  print('\n--- Testing Getters ---');
  print('Width in meters: ${cmTriangle.widthInMeters} m');
  print('Height in feet: ${cmTriangle.heightInFeet} ft');

  print('\n--- Testing Setters ---');
  cmTriangle.widthInInches = 10;
  cmTriangle.heightInMeters = 2;

  print('New width (inches to mm): ${cmTriangle.widthInMm} mm');
  print('New height (meters to mm): ${cmTriangle.heightInMm} mm');
  print('Updated Triangle: $cmTriangle');
}