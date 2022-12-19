void main() {
  List<int> moneys = [100, 200, 110];
  final List<int> newMoneys = [10, 20, 30];
  moneys.sort((a, b) => a-b);
  // print(moneys);

  moneys.add(50);
  moneys.insert(2, 250);
  // print(moneys);

  newMoneys.add(5);
  // print(newMoneys);

  // newMoneys.clear();
  // print(newMoneys);

  // newMoneys.reversed.toList();

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  // print(customerMoney);

  List<int> customerMoney2 = [3, 20, 30, 40];
  customerMoney2.sort();
  // high to low

  // for(int i = 0; i < customerMoney2.length; i++) {
  //   if(customerMoney2[i] > 35) {
  //     print("Customer ${i} has more than 35");
  //   } else if(customerMoney2[i] > 5) {
  //     print("Customer ${i} has more than 5");
  //   } else {
  //     print("Customer ${i} has less than 35");
  //   }
  // }

  List<dynamic> user = [1, "Emre", 1.75];

  // for(var item in user) {
  //   print(item);
  // }

  List<String> userNames = ["Emre", "Ahmet", "Mehmet"];

  userNames.contains("Emre");

  // userNames.forEach((element) {
  //   print(element);
  // }); 
}