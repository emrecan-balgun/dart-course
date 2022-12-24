import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  // final int customer1Money = 100;
  // final String customer1Name = "Emrecan";
  // final int customer1Age = 24;
  // final String customer1City = "Izmir";

  // controlCustomerAge(customer1Money);

  // final int customer2Money = 200;
  // final String customer2Name = "Mehmet";
  // final int customer2Age = 33;
  // final String customer2City = "Istanbul";

  // controlCustomerAge(customer2Money);

  // List <int?> customerMoneys = [100, null, 0];

  // for(var item in customerMoneys) {
  //   if(item != null) {
  //     if(item > 0) {
  //       print("Welcome");
  //     } else {
  //       print("Bye");
  //     }
  //   } else {
  //     print("Come back later");
  //   }
  //   bool result = controlMoney(item) == null ? false : true;
  //   print(result);
  // }

  // print("------------" * 10);

  // User user1 = User("Emre", 50, age: 24, city: 'Izmir', id: '12345');
  // print(user1.name);

  // User user2 = User("Emir", 45, null, null);

  final user3 = User("Mehmet", 100, age: 51, id: '12'); // best practise (age and city are optional parameters)

  if(user3.isSpecialUser('12')) {
    user3.money += 100;
    print("Added money");
  }

  User2 newUser2 = User2('eb', 25);
  newUser2.money = 100;
  newUser2.money = null;

}

// int? controlMoney(int? money) {
//   if(money != null && money > 0) {
//       return money;
//   } else {
//     return null;
//   }
//   // if(money == null || money == 0) {
//   //   return null;
//   // }
// }

// void controlCustomerAge(int value) {
//   if (value > 10) {
//     print("Customer can buy a candy");
//   } else {
//     print("Customer can't buy a candy");
//   }
// }