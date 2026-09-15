import 'teilnehmer.dart';

void printTeilnehmer(Teilnehmer teilnehmer) {
  print('--- Teilnehmer ---');
  print('Name: ${teilnehmer.name}');
  print('Age: ${teilnehmer.age}');
  print('Gender: ${teilnehmer.gender}');
  print('Address: ${teilnehmer.address}');
  print('Email: ${teilnehmer.email}');
  print('Birthday: ${teilnehmer.birthday}');
  print('Grade: ${teilnehmer.grade}');
  print('');
}

void main() {
  Teilnehmer teilnehmer1 = Teilnehmer(
    name: 'Max Deadbringer',
    age: 25,
    gender: 'Male',
    address: 'Hannover',
    email: 'max@example.com',
    birthday: DateTime(2001, 5, 10),
    grade: 1.7,
  );
  Teilnehmer teilnehmer2 = Teilnehmer(
    name: 'Anna Darkmage',
    age: 22,
    gender: 'Female',
    address: 'Berlin',
    email: 'anna@example.com',
    birthday: DateTime(2004, 8, 20),
  );

  Teilnehmer teilnehmer3 = Teilnehmer(
    name: 'Gangie Hoopert',
    age: 30,
    gender: 'Attack Helicopter',
    address: 'Hamburg',
    email: 'gangie@example.com',
    grade: 2.3,
  );

  printTeilnehmer(teilnehmer1);
  printTeilnehmer(teilnehmer2);
  printTeilnehmer(teilnehmer3);
}
