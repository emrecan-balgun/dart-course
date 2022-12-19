void main() {
  int money = 5;

  money = money + 1;
  money += 1;
  money++;

  String name = "Emre";
  String surname = "Balgün";

  print(name + " " + surname);

  if(name == "Emre"); {}
  if(name != "Emre"); {}
  if(name.length > 'Emrecan'.length) {}
  if(name.length < 'Emrecan'.length) {}
  if(name.length >= 'Emrecan'.length) {}
  if(name.length <= 'Emrecan'.length) {}

  int appleMoney = 20;
  double discount = 2.5;
  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ discount);
  // ~/ is integer division (rounds down)
  // .isEven
  // .isOdd
  print(myMoney);
  print(myMoney.isEven);
}