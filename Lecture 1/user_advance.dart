void main() {
  // final String userName = "Emre";
  // final int bankMoney = 100;
  // const String bankName = "Dart Bank";
  // final is a runtime constant
  // final is a dynamic type
  // const is a compile time constant

  // var userName2 = "Balgün";
  // var userName2Money = 50;
  // var is a dynamic type

  const String bankName = "EB Bank";
  const String user1 = "Bank 1 user";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 user";
  int user2Money = 500;

  user2Money =  user2Money - user1Money.toInt();
  print("User 2 money: $user2Money");
}