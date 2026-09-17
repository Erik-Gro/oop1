import 'cdemy.dart';
import 'kurs.dart';
import 'teilnehmer.dart';
import 'geschlecht.dart';

void main() {
  final cdemy = Cdemy();

  final dartKurs = Kurs('Flutter & Dart Advanced');
  final cppKurs = Kurs('C++ Systems Programming');

  final teilnehmer1 = Teilnehmer(
    vorname: 'Max',
    nachname: 'Deadbringer',
    age: 25,
    geschlecht: Geschlecht.maennlich,
    address: 'Hannover',
    email: 'max@example.com',
    birthday: DateTime(2001, 5, 10),
    grade: 1.7,
  );

  final teilnehmer2 = Teilnehmer(
    vorname: 'Anna',
    nachname: 'Darkmage',
    age: 22,
    geschlecht: Geschlecht.weiblich,
    address: 'Berlin',
    email: 'anna@example.com',
    birthday: DateTime(2004, 8, 20),
  );

  final teilnehmer3 = Teilnehmer(
    vorname: 'Gangie',
    nachname: 'Hoopert',
    age: 30,
    geschlecht: Geschlecht.attackHelicopter,
    address: 'Hamburg',
    email: 'gangie@example.com',
    grade: 2.3,
  );

  dartKurs.addTeilnehmer(teilnehmer1);
  dartKurs.addTeilnehmer(teilnehmer2);

  cppKurs.addTeilnehmer(teilnehmer3);
  cppKurs.addTeilnehmer(teilnehmer1);

  cdemy.addKurs(dartKurs);
  cdemy.addKurs(cppKurs);

  print(cdemy);
}