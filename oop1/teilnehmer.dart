class Teilnehmer {
  String name;
  int age;
  String gender;
  String address;
  String email;
  DateTime? birthday;
  double? grade;

  Teilnehmer({
    required this.name,
    required this.age,
    required this.gender,
    required this.address,
    required this.email,
    this.birthday,
    this.grade,
  });
}
