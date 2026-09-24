abstract class CanFly {
  void fly();
}

abstract class CanWalk {
  void walk();
}

abstract class CanBreatheUnderWater {
  void breatheUnderWater();
}

abstract class Animal {
  void move();
  void makeSound();
}

abstract class Fish extends Animal {
  @override
  void move() {
    print('$runtimeType is swimming effortlessly through the water.');
  }
}

abstract class Bird extends Animal {
  @override
  void move() {
    print('$runtimeType is moving using its legs and wings.');
  }
}

class Goldfish extends Fish implements CanBreatheUnderWater {
  @override
  void makeSound() {
    print('Goldfish: *Blub blub*');
  }

  @override
  void breatheUnderWater() {
    print('Goldfish extracts oxygen through its gills underwater.');
  }
}

class Eagle extends Bird implements CanFly, CanWalk {
  @override
  void makeSound() {
    print('Eagle: *Screech!*');
  }

  @override
  void fly() {
    print('Eagle soars high in the sky using thermal currents.');
  }

  @override
  void walk() {
    print('Eagle hops/walks on the ground using its talons.');
  }
}

class Duck extends Bird implements CanFly, CanWalk, CanBreatheUnderWater {
  @override
  void makeSound() {
    print('Duck: *Quack quack!*');
  }

  @override
  void fly() {
    print('Duck flaps its wings fast and flies low over the lake.');
  }

  @override
  void walk() {
    print('Duck waddles across the grass.');
  }

  @override
  void breatheUnderWater() {
    print('Duck holds its breath and dives under water.');
  }
}

void globalFly(Object? obj) {
  if (obj is CanFly) {
    obj.fly();
  } else {
    final typeName = obj?.runtimeType.toString() ?? 'Null';
    print('$typeName cannot fly.');
  }
}