import 'dart:math';

class Zutrittsberechtigung {
  final String token;

  Zutrittsberechtigung() : token = _generateSecureToken();

  static String _generateSecureToken() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(256));
    return values.map((b) => b.toRadixString(16).padLeft(2, '0')).join('');
  }

  @override
  String toString() => token;
}