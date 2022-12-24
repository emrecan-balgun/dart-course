void main() {
  final user = _User('John', age: 24);

  // if((user.age?? 0) < 18) {}
  if(user.age is int) {
    if(user.age! < 18) {
      print('You are not allowed to enter');
      user.updateMoneyWithString("TRY");
    } else {
      print('Welcome');
      user.updateMoneyWithNumber(100);
    }
  }

  final _newType = user.moneyType is String ? (user.moneyType as String) : (user.moneyType as int);
  // print((user.moneyType as String));
  print(_newType);

  int money1 = 50;
  int money2 = 50;

  if(money1 == money2) { // true because of value is same
    print('Equal');
  } else {
    print('Not Equal');
  }

  final moneyBank1 = Bank(50, "12");
  final moneyBank2 = Bank(50, "12");

  if(moneyBank1 == moneyBank2) { // false because of reference address is different
    print('Equal');
  } else {
    print('Not Equal');
  }

  print(moneyBank1 + moneyBank2);

  moneyBank1.money += 10;
  print(moneyBank1.money);

  // cascade notation
  moneyBank1
    ..money += 10
    ..updateName("William");

  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int data) {
    moneyType = data;
  }

  _User(this.name, {this.age});
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator + (Bank newBank) {
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  bool operator == (Object object) {
    return object is Bank && object.id == id;
  }
  
  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print(money);
  }
}