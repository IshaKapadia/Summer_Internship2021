import 'dart:io';
import 'dart:collection';

//List:-List is used to represent a collection of objects. It is an ordered group of objects
//There are two types of List in dart

//1)Fixed-Length List
//2)Growable List

void OneDListmain() {
  List logTypes = [];
  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");

  // iterating across list
  for (String type in logTypes) {
    print(type);
  }

  // printing size of the list
  print(logTypes.length);
  logTypes.remove("WARNING");

  print("size after removing.");
  print(logTypes.length);

  // Adding multiple values in List and printing it

  // list_name.addAll([val 1, val 2, ...]);

  logTypes.addAll(['CHECK', 'NOT-FOUND']);
  print(logTypes);

  // Adding new value in List at specific index and printing it

  // list_name.insert(index, value);
  logTypes.insert(1, 'WARNING');
  print(logTypes);

  // Adding new value in List at specific index and printing it

  // list_name.insertAll(index, list_of_values);
  logTypes.insertAll(0, ['For', 'Information']);
  print(logTypes);

  //Updating the Value
  logTypes[1] = 'Info...';
  print(logTypes);

  //Update the value in Range
  //List.replaceRange(int start_index,int end_index,Iterable <items>)

  logTypes.replaceRange(0, 1, ['For', 'More Information']);
  print(logTypes);

  //For Remove/Delete
  //List.remove(Object value)

  bool res = logTypes.remove('Info...');
  print(logTypes);

  //Remove from Position:-
  //logTypes.removeAt(0);

  //Remove In Range:-
  logTypes.removeRange(0, 2);

  //Remove From Last:-
  logTypes.removeLast();
  print(logTypes);
}

//IN Dart There are 3 Types of List
//1-D List,2-D List,3-D List
//We have discussed the 1-D list.(Above)

void TwoDListmain() {
  // Creating two dimentional list

  var twoList = List.generate(3, (i) => List.generate(3, (j) => i + j));

  // Printing its value
  print(twoList);
}

void ThreeDmain() {
  // Creating three dimentional list
  var threeList = List.generate(
      3, (i) => List.generate(3, (j) => List.generate(3, (k) => i + j + k)));

  // Printing its value
  print(threeList);
}

//HashMap:-hash table based implementation of Map

void HashMapmain() {
  var accounts = new HashMap();
  accounts['dept'] = 'HR';
  accounts['name'] = 'Isha';
  accounts['email'] = 'Isha@gmail.com';
  //print('Map after adding  entries :${accounts}');
  print(accounts);

  //For adding/updating Mutiple values at the same time
  accounts.addAll({'dept': 'Sales', 'email': 'abc@gmail.com'});
  print(accounts);

  //For removing value from HashMap
  accounts.remove('dept');
  print(accounts);

  //Remove all elements using clear()
  accounts.clear();
  print(accounts);
}

//HashSet:-unordered hash-table based Set implementation.
void HashSetmain() {
  Set setVal = new HashSet();
  setVal.add('lemon');
  setVal.add('mango');
  setVal.add('pineapple');

  //print('set after adding  entries :${setVal}');
  print(setVal);

  //For adding/updating Mutiple values at the same time
  setVal.addAll(['Sales', 'abc@gmail.com', 'omg']);
  print(setVal);

  //For removing value from HashMap
  setVal.remove('Sales');
  print(setVal);

  //Remove all elements using clear()
  setVal.clear();
  print(setVal);
}

//Generic Queue
void Queuemain() {
  Queue<int> queue = new Queue<int>();
  print("Default implementation ${queue.runtimeType}");
  queue.addLast(10);
  queue.addLast(20);
  queue.addLast(30);
  queue.addLast(40);
  queue.removeFirst();

  for (int no in queue) {
    print(no);
  }
}

//enum
enum dart { Welcome, to, dartLanguage }

void main() {
// Assing a value from
// enum to a variable dartVal
  var dartVal = dart.dartLanguage;

// Switch-case
  switch (dartVal) {
    case dart.Welcome:
      print("This is not the correct case.");
      break;
    case dart.to:
      print("This is not the correct case.");
      break;
    case dart.dartLanguage:
      print("This is the correct case.");
      break;
  }
}
