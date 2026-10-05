abstract class Animal {
  String name;

  Animal(this.name);

  void move () {
    print('$name bewegt sich');
  }

  void makeSound () {
    print('$name machtGerausche');
  }
}

abstract class canFly {
  void fly ();
}

abstract class canWalk {
  void walk ();
}

abstract class canBreatheUnderWater{
  void breatheUnderWater ();
}

class Fish extends Animal implements canBreatheUnderWater{
  Fish(super.name);

  @override
  void breatheUnderWater(){
    print ('Ein Fisch kann unter Wasser atmen');
  }

  @override
  void makeSound(){
    print ('Fische machen keine Gerausche');
  }  

}

class Bird extends Animal implements canFly {

  Bird(super.name);

  @override
  void fly(){
    print('$name kann fliegen');
  }
}

class Mammal extends Animal implements canWalk {

  Mammal (super.name);

  @override
  void walk(){
    print('$name kann laufen');
  }
  
}

class Goldfish extends Fish{
  Goldfish(super.name);
}

class Eisbaer extends Mammal{
  Eisbaer(super.name);
}

class Storch extends Bird{
  Storch(super.name);
}