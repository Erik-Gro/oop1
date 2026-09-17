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
  double fromMillimeters(double value) => value / toMmFactor;

  double toSquareMillimeters(double value) => value * (toMmFactor * toMmFactor);
  double fromSquareMillimeters(double value) => value / (toMmFactor * toMmFactor);
}

class Triangle {
  double _widthInMm;
  double _heightInMm;

  Triangle._({
    required double widthInMm,
    required double heightInMm,
  })  : assert(widthInMm >= 0, 'Width must be non-negative'),
        assert(heightInMm >= 0, 'Height must be non-negative'),
        _widthInMm = widthInMm,
        _heightInMm = heightInMm;

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

  double get widthInMm => _widthInMm;
  set widthInMm(double value) => _widthInMm = value;

  double get heightInMm => _heightInMm;
  set heightInMm(double value) => _heightInMm = value;

  double getHeight(MeasurementSystem ms) {
    return ms.fromMillimeters(_heightInMm);
  }

  void setHeight(MeasurementSystem ms, num value) {
    _heightInMm = ms.toMillimeters(value.toDouble());
  }

  double getWidth(MeasurementSystem ms) {
    return ms.fromMillimeters(_widthInMm);
  }

  void setWidth(MeasurementSystem ms, num value) {
    _widthInMm = ms.toMillimeters(value.toDouble());
  }

  double get areaInSquareMm => 0.5 * _widthInMm * _heightInMm;

  double getArea(MeasurementSystem ms) {
    return ms.fromSquareMillimeters(areaInSquareMm);
  }

  @override
  String toString() =>
      'Triangle(width: ${_widthInMm.toStringAsFixed(2)}mm, height: ${_heightInMm.toStringAsFixed(2)}mm, area: ${areaInSquareMm.toStringAsFixed(2)}mm²)';
}