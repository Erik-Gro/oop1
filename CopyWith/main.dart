import 'teilnehmer.dart';

void main() {
  final participant1 = Teilnehmer(
    id: 'T-100',
    name: 'Alice',
    certification: 'Dart Basics',
  );
  
  print('Original:');
  print(participant1);

  final participant2 = participant1.copyWith(name: 'Alice Smith');
  print('\nUpdated Name:');
  print(participant2);

  final participant3 = participant2.copyWith(certification: () => null);
  print('\nExplicitly Nullified Certification:');
  print(participant3);
}