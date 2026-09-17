import 'dart:collection';
import 'teilnehmer.dart';

class Kurs {
  final String kursName;

  final List<Teilnehmer> _teilnehmer = [];

  Kurs(this.kursName);

  UnmodifiableListView<Teilnehmer> get teilnehmer => UnmodifiableListView(_teilnehmer);

  void addTeilnehmer(Teilnehmer t) {
    _teilnehmer.add(t);
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('--- Kurs: $kursName ---');
    for (var t in _teilnehmer) {
      buffer.writeln('  - $t');
    }
    return buffer.toString();
  }
}