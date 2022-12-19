void main() {
  int money = 60;
  String userName = "Emre";
  // bool => 0 or 1
  bool isCustomerRich = false;

  print(userName + "'s money: " + "$money");

  if(money > 100) {
    print("You are rich!");
  } else if(money > 50) {
    print("You are not rich but you are not poor!");
  } else {
    print("You are poor!");
  }

  money = money + 50;

  print(userName + "'s money: " + "$money");

  if(money > 100) {
    print("You are rich!");
  } else if(money > 50) {
    print("You are not rich but you are not poor!");
  } else {
    print("You are poor!");
  }

  // .isEmpty => String is empty or not
}