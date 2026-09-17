
enum MeasurementSystem {
  mm(1.0),
  cm(10.0),
  dm(100.0),
  m(1000.0),
  inch(25.4),
  feet(304.8);

  final double toMmFactor;

  const MeasurementSystem(this.toMmFactor);

  double toMillimeters(double value) => value * toMmFactor;
}

class Triangle {
  final double widthInMm;
  final double heightInMm;

  const Triangle._({
    required this.widthInMm,
    required this.heightInMm,
  })  : assert(widthInMm >= 0, 'Width must be non-negative'),
        assert(heightInMm >= 0, 'Height must be non-negative');

  Triangle({
    required double width,
    required double height,
    required MeasurementSystem system,
  }) : this._(
    widthInMm: system.toMillimeters(width),
    heightInMm: system.toMillimeters(height),
  );

  Triangle.mm({required double width, required double height})
      : this(width: width, height: height, system: MeasurementSystem.mm);

  Triangle.cm({required double width, required double height})
      : this(width: width, height: height, system: MeasurementSystem.cm);

  Triangle.dm({required double width, required double height})
      : this(width: width, height: height, system: MeasurementSystem.dm);

  Triangle.m({required double width, required double height})
      : this(width: width, height: height, system: MeasurementSystem.m);

  Triangle.inch({required double width, required double height})
      : this(width: width, height: height, system: MeasurementSystem.inch);

  Triangle.feet({required double width, required double height})
      : this(width: width, height: height, system: MeasurementSystem.feet);

  double get areaInSquareMm => 0.5 * widthInMm * heightInMm;

  @override
  String toString() =>
      'Triangle(width: ${widthInMm}mm, height: ${heightInMm}mm, area: ${areaInSquareMm}mm²)';
}