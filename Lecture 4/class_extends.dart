void main() {
  final user = User("Emrecan", 100);
  user.sayMoneyWithCompanyName();

  final userBank = BankUser("Emrecan2", 200, 123);
  final specialUser = SpecialUser("name", 100, 123, 20);

  print(specialUser.calculateMoney);
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print("EB Bank | Money: $money");
  }
}

class User extends IUser {
  User(String name, int money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final int bankingCode;
  late final int _discount;

  SpecialUser(String name, int money, this.bankingCode, int discount) : super(name, money) {
    _discount = discount;
  }

  int get calculateMoney => money - (money ~/ _discount); // bölme işlemi olduğu için dönmez override etmek gerekir onu da ~ işareti ile yaparız
}