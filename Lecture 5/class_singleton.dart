void main() {
  final newProduct = Product.money;

  calculateMoney(Product.money ?? 0);
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

  static const companyName = "EB Bank";

  static void incrementMoney(int newMoney) {
    if(money != null) {
      money = money! + newMoney;
    }
  }
}