import 'entities.dart';

void main() {

  final player = Player(
    name: 'Hero',
    posX: 10,
    posY: 20,
    maxHealth: 100,
    livesRemaining: 1,
  );

  final monster = Monster(
    name: 'Goblin',
    posX: 12,
    posY: 20,
    maxHealth: 30,
    threatLevel: 2,
    color: Color.green,
  );

  print(monster.makeNoise());
  
  monster.takeDamage(15);
  monster.takeDamage(20);

  player.takeDamage(100); 
}