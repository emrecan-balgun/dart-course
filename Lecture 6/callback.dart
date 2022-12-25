void main() {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    print(user.money);
    return result + 5;
  });
}

typedef CalculateCallback = int Function(int data);

class User {
  // @deprecated
  int money;

  User({ required this.money });

  void calculateMoney(CalculateCallback onComplete) {
    money += 5;
    final passData = onComplete(money);
  }
}