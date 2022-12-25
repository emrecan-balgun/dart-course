void main() {
  IUser user = Turkish();
  user.sayName();

  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);

  void sayName();
}

class Turkish implements IUser {
  @override
  String get name => "Emre";

  @override
  void sayName() {
    print('Merhaba $name');
    print("Aç mısın?");
  }
}

class English implements IUser {
  @override
  String get name => "John";

  @override
  void sayName() {
    print('Hello $name');
    print("Are you hungry?");
  }
}

class German {
  
}