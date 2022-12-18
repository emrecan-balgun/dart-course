void main() {
  String userName = "Emre";
  // int userMoney = 100;
  double userMoney2 = 100.50;

  print("Hello $userName!\nYour balance: $userMoney2");

  print("--------------------");
  userMoney2 += 20.5;
  userMoney2 = userMoney2 / 4.25;
  print("\nYour balance: ${userMoney2.toStringAsFixed(2)}");
}