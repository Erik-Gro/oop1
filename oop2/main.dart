import 'triangle.dart';

void main() {

  final cmTriangle = Triangle.cm(width: 10, height: 5);
  final inchTriangle = Triangle.inch(width: 2, height: 4);

  final meterTriangle = Triangle(
    width: 1.5,
    height: 2.0,
    system: MeasurementSystem.m,
  );

  print(cmTriangle);
  print(inchTriangle);
  print(meterTriangle);
}