import 'classes.dart';


void globalFly(Object? object){
  if (object is canFly){
    object.fly();
  }

  else if (object is Animal){
    print('${object.name} kann nicht fliegen');
  }
}
void main(){
  Storch storch = Storch('Storch');
  Eisbaer baer = Eisbaer('Bär');

  globalFly(storch);
  globalFly(baer);
}