enum Color { red, green, blue, yellow, black }

class GameObject {
  String name;
  int posX;
  int posY;

  GameObject({
    required this.name,
    required this.posX,
    required this.posY,
  });

  void despawn() {
    print('$name has been despawned from world coordinates ($posX, $posY).');
  }
}

abstract class DamageableObject extends GameObject {
  int maxHealth;
  int _health; 

  DamageableObject({
    required String name,
    required int posX,
    required int posY,
    required this.maxHealth,
    int? currentHealth,
  })  : _health = currentHealth ?? maxHealth,
        super(name: name, posX: posX, posY: posY);

  int get health => _health;

  bool isDead() => _health <= 0;

  void takeDamage(int damage) {
    if (isDead()) return;

    _health = (_health - damage).clamp(0, maxHealth);
    print('$name took $damage damage! Current HP: $_health/$maxHealth');

    if (isDead()) {
      onKilled();
    }
  }

  void onKilled();
}

class Player extends DamageableObject {
  int _score;
  int _livesRemaining;

  Player({
    required String name,
    required int posX,
    required int posY,
    required int maxHealth,
    int score = 0,
    int livesRemaining = 3,
  })  : _score = score,
        _livesRemaining = livesRemaining,
        super(name: name, posX: posX, posY: posY, maxHealth: maxHealth);

  int get score => _score;
  int get livesRemaining => _livesRemaining;

  @override
  void onKilled() {
    _livesRemaining--;
    print('PLAYER DIED: $name has $_livesRemaining lives remaining.');
    
    if (_livesRemaining <= 0) {
      print('GAME OVER for $name!');
      despawn();
    }
  }
}

class Monster extends DamageableObject {
  int _threatLevel;
  Color _color;

  Monster({
    required String name,
    required int posX,
    required int posY,
    required int maxHealth,
    required int threatLevel,
    required Color color,
  })  : _threatLevel = threatLevel,
        _color = color,
        super(name: name, posX: posX, posY: posY, maxHealth: maxHealth);

  int get threatLevel => _threatLevel;
  Color get color => _color;

  String makeNoise() {
    return '$name screams: RAAAAAARGH!';
  }

  @override
  void onKilled() {
    print('MONSTER DEFEATED: $name has been defeated!');
    despawn();
  }
}