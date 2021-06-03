import 'dart:io';

//For printing
void Printmain() {
  var firstName = 'Isha';
  String lastName = 'Kapadia';
  print(firstName + ' ' + lastName);
}

//For user input and output
/*
main() {
  stdout.writeln('What is your name?');
  String name = stdin.readLineSync();
  print('My name is: $name');
}*/

//Data Types
/*
int 
double 
string
bool
dynamic
*/

//RAW String
/*main() {
  var s = r'In a raw \n string';
  print(s);
}*/

//Multi line string
/*main() {
  var s1 = '''
  You can create
  multi-line string''';
  var s2 = """
   This is also 
   multi-line string..""";

  print(s1);
  print(s2);
}*/

//Type Conversion

//String->int
/*main() {
  //String to int
  var one = int.parse('1');
  assert(one == 1);

//String->double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

//int->String
  String oneString = 1.toString();
  assert(oneString == 1);

//double->String
  String piAsString = 3.1459.toStringAsFixed(2);
  assert(piAsString == '3.14');
}*/

//Null Aware Operator
//(?.),(??),(??==)

class Num {
  int num = 10;
}

/*main() {
  var n = Num();
  int number = 0;

  if (n != null) {
    number = n.num;
  }

  // number = n?.num;
  //number = n?.num ?? 0;
//print(number??=100);
  print(number);
}*/

//Type Test
/*void main() {
  var x = 100.00;

  if (x is int) {
    print('Integer');
  }
}*/

//Loops
void loopmain() {
  var number = [1, 2, 3];

  //for-in loop
  for (var n in number) {
    print(n);
  }

  //for-each
  number.forEach((n) => print(n));

  //while loop
  var num = 5;
  while (num > 0) {
    print(num);
    num--;
  }
}

//Collection
void Listmain() {
  //List
  List<String> names = const ['Jack', 'Jill'];

  for (var n in names) {
    print(n);
  }

  //copy
  var nm = names;
  //nm[0] = 'Mark';
  for (var n in nm) {
    print(n);
  }

  //another way
  //names2 doesn't point towards the same name as names.
  var names2 = [...names];
  for (var n in names2) {
    print(n);
  }
}

void Setmain() {
  //Set

  var halogens = <String>{'Isha', 'Kapadia'};
  print(halogens.runtimeType);
  //OR
  Set<String> names = {};
  print(names.runtimeType);
}

void Mapmain() {
  //Map
  //Key value
  var gifts = {2: 'xyz', 1: 'pqr', 3: 'golden rings'};
  print(gifts[1]);

  var val = Map();
  val['first'] = 'Mango';

  print(val['first']);

  var val2 = {'first': 'Mango', 'second': 'Jack-Fruit'};
  print(val2);
}

//Functions
void Functionmain() {
  showOutput(square1(2));
  showOutput(square(2));
}

//dynamic retutn any value(int,double,float)
dynamic square1(var num) {
  return num * num;
}

//Arrow Function=>
dynamic square(num) => num * num;

void showOutput(var msg) {
  print(msg);
}

//Anonymous Function
void AnoFunctionmain() {
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print(item);
  });

  //Positional argument
  print(sum(2, 2));

  //named parameter(optional)
  print(sum2(num1: 2, num2: 1));

  //Combined Name and Positional Parameter
  print(sum3(3, num2: 6));
}

dynamic sum(var num1, var num2) => num1 + num2;
dynamic sum2({var num1, var num2}) => num1 + num2;
dynamic sum3(var num1, {var num2}) => num1 + num2;

//Class

class Person {
  String name = '';
  int age = 0;

  /*Person(String nm, [int ag = 18]) {
    this.name = nm;
    this.age = ag;
  }*/
  //OR
  Person(this.name, [this.age = 18]);

//named constructor
  Person.guest() {
    name = 'Guest';
    age = 23;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

void Classmain() {
  Person person1 = new Person('Isha');
  //person1.name = 'Isha';
  //person1.age = 22;
  person1.showOutput();

  Person person2 = new Person('Dev', 20);
  person2.showOutput();

  var person3 = Person.guest();
  person3.showOutput();
}

//Inheritance
class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(model);
    print(year);
  }
  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

void Inheritancemain() {
  var car1 = Car('Gets', 2018, 1500000);
  car1.showOutput();
}

//Getter-Setter
class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  //Define two calculated property:right and bottom
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

void GetSetmain() {
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);
  rect.right = 12;
  print(rect.left);
}

//Exception Handling
int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greater than zero');
  }
  return val;
}

void letVerifyTheValue(var val) {
  var valueVerification;

  try {
    valueVerification = mustGreaterThanZero(val);
  } catch (e) {
    print(e);
  } finally {
    if (valueVerification == null) {
      print('Value is not Accepted:');
    } else {
      print('Value verified: $valueVerification');
    }
  }
}

void Verifymain() {
  letVerifyTheValue(0);
}
