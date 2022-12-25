import 'class_singleton.dart';

void main() {
  final model = CarModel(
      category: CarModels.bmw,
      name: "BMW 3.20",
      money: 130000,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.mercedes,
        name: "Mercedes C200",
        money: 140000,
        isSecondHand: true),
    CarModel(category: CarModels.audi, name: "Audi A4", money: 150000),
    CarModel(
        category: CarModels.tesla,
        name: "Tesla Model 3",
        money: 200000,
        isSecondHand: false),
    CarModel(category: CarModels.ford, name: "Ford Focus", money: 90000),
    CarModel(
        category: CarModels.toyota,
        name: "Toyota Corolla",
        money: 90000,
        isSecondHand: true),
  ];

  final newCar = CarModel(
      category: CarModels.mercedes,
      name: "Mercedes C200",
      money: 140000,
      isSecondHand: true);

  final resultCount = carItems
      .where((element) => element.isSecondHand)
      .length; // where returns a list of elements that match the condition
  print(resultCount);

  final isHaveaCar =
      carItems.contains(newCar); // contains returns a boolean value
  if (isHaveaCar) {
    print("You have this car");
  } else {
    print("You don't have this car");
  }

  final resultBmw = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 100000;
  }).join();

  print(resultBmw);

  final carNames = carItems.map((e) => e.name).toList(); // .join(',')
  print(carNames);

  bool isHaveCarSeat = false;

  try {
    final seatCar = carItems.singleWhere((element) => element.category == CarModels.seat);
    print(seatCar.name);
    isHaveCarSeat = true;
  } catch (e) {
    print("There is no car");
    isHaveCarSeat = false;
  } finally {
    print("Finally $isHaveCarSeat");
  }

  final index = carItems.indexOf(newCar);
  print(index);

  carItems.add(CarModel(category: CarModels.mercedes, name: 'mercedes cla 180 amg', money: 150000));
  carItems.sort((first, second) => first.money.compareTo(second.money)); // sort the list by money value (ascending)

  print(carItems);

  final users = carItems.expand((element) => element.users).toList();
  // calculateToUser(carItems);
  carItems.remove(newCar);
  carItems.removeWhere((element) => element.category == CarModels.mercedes || element.money < 50000);
  print(carItems);
}

// void calculateToUser(List<CarModel> items) {
//   final newItems = items.map((e) {
//     if(e.category == CarModels.ford) {
//       e.category = CarModels.seat;
//     }
//     if(e.isSecondHand) {
//       e.isSecondHand = false;
//     }
//     return e;
//   }).toList();

//   print(newItems);
// }


class CarModel {
  final CarModels category;
  final String name;
  final double money;

  List<User> users;
  String? city;
  bool isSecondHand;


  @override
  bool operator ==(Object other) { // listelerde eşleştirme yapabilmek için bu fonksiyonu override etmemiz gerekiyor
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }

  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true,
      this.users = const [],
      });
}

enum CarModels {
  bmw,
  mercedes,
  audi,
  tesla,
  ford,
  toyota,
  seat,
}
