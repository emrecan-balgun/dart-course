void main() {
  final int customer1Money = 100;
  final String customer1Name = "Emrecan";
  final int customer1Age = 24;
  final String customer1City = "Izmir";

  controlCustomerAge(customer1Money);

  final int customer2Money = 200;
  final String customer2Name = "Mehmet";
  final int customer2Age = 33;
  final String customer2City = "Istanbul";

  controlCustomerAge(customer2Money);
}

  void controlCustomerAge(int value) {
    if (value > 10) {
      print("Customer can buy a candy");
    } else {
      print("Customer can't buy a candy");
    }
  }
