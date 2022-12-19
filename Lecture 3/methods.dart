void main() {
  final int userMoney = 0;
  final int userMoney2 = 15;

  controlUserMoney(userMoney);
  controlUserMoney(userMoney2);

  final result = convertToDollar(userMoney2);

  final result2 = convertToStandartDollar(userMoney2, dollar: 20);

  print(result);
  print(result2);
  print(sayHello("Emre"));
}

void controlUserMoney(int userMoney) {
  if(userMoney > 0) {
    print("User has money");
  } else {
    print("User has no money");
  }
}

int convertToDollar(int money) {
  return money * 18;
}

int convertToStandartDollar(int money, {int dollar = 18}) {
  return money * dollar;
}

String sayHello(String name) {
  return "Hello $name";
}