void main() {
  int x = 12;
  x ??= 11;
  print('x: $x');

  var list = [];
  list
    ..add(1)
    ..add(2)
    ..add(4)
    ..remove(2);

  print('list $list');

  var sum = (a, b) => a + b;
  var closures = (value, [up = 1]) => () => value += up;
  var counter = closures(0);

  print(sum(1, 2)); // 3

  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3
  print(counter()); // 4

  Fullstack().language();

  // dart --enable-asserts
  int testNumber = 1212;
  int minNumber = 1000;
  assert(testNumber >
      minNumber); //Failed assertion: line 30 pos 10: 'testNumber > minNumber': is not true.

  const people = <String>['Den', 'Vlad', 'Kirill'];
  const copyPeople = [...?people, 'Ilya'];
  const dns = {
    '192.162.0.1': 'google.com',
    '192.162.1.1': 'google.maps.com',
  };
  print(people);
  print(copyPeople);
  print(dns);
}

abstract class Programmer {
  void language();
}

mixin Java {
  void java() {
    print('write Java code');
  }
}

mixin React {
  void react() {
    print('write JS code');
  }
}

class Fullstack extends Programmer with Java, React {
  void language() {
    java();
    react();
  }
}
