class Teilnehmer {
  final String id;
  final String name;
  final String? certification;

  const Teilnehmer({
    required this.id,
    required this.name,
    this.certification,
  });

  Teilnehmer copyWith({
    String? id,
    String? name,
    String? Function()? certification,
  }) {
    return Teilnehmer(
      id: id ?? this.id,
      name: name ?? this.name,
      certification: certification != null ? certification() : this.certification,
    );
  }

  @override
  String toString() {
    return 'Teilnehmer(id: $id, name: $name, certification: $certification)';
  }
}

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