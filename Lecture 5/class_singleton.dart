import 'model/product_config_model.dart';

void main() {
  final newProduct = Product.money;

  calculateMoney(Product.money ?? 0);

  productNameChange();

  final user1 = User("John", "x");
  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  print(ProductConfig.instance.apiKey);

  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if((Product.money ?? 0) > 5) {
    print("You have enough money");
    // Product.money += 10;
    Product.incrementMoney(10);
    print(Product.money);
  } else {
    print("You don't have enough money");
  }
}

void productNameChange() {
  Product.money = null;
  // Product.companyName = "Test"; // Error because companyName is constant and can't be changed after initialization
}

class Product {
  static int? money = 10;
  String name;

  Product(this.name);

  Product.veli(this.name);
  Product.veli2([this.name = "Veli"]);

  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = "EB Bank"; // singleton

  static void incrementMoney(int newMoney) {
    if(money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}