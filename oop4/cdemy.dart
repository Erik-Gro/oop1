import 'dart:collection';
import 'kurs.dart';

class Cdemy {
  final List<Kurs> _kurse = [];

  UnmodifiableListView<Kurs> get kurse => UnmodifiableListView(_kurse);

  void addKurs(Kurs kurs) {
    _kurse.add(kurs);
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('===================================');
    buffer.writeln('          CDEMY CAMPUS             ');
    buffer.writeln('===================================');
    for (var kurs in _kurse) {
      buffer.writeln(kurs);
    }
    return buffer.toString();
  }
}