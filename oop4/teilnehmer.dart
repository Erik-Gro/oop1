import 'geschlecht.dart';
import 'zutrittsberechtigung.dart';

class Teilnehmer {
  final String vorname;
  final String nachname;
  final int age;

  final Geschlecht geschlecht;
  final String address;
  final String email;
  final DateTime? birthday;
  final double? grade;

  final Zutrittsberechtigung zutrittsberechtigung;

  Teilnehmer({
    required this.vorname,
    required this.nachname,
    required this.age,
    required this.geschlecht,
    required this.address,
    required this.email,
    this.birthday,
    this.grade,
  }) : zutrittsberechtigung = Zutrittsberechtigung();

  @override
  String toString() {
    return '$vorname $nachname (Zutritts-ID: $zutrittsberechtigung)';
  }
}