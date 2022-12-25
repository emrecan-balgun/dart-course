void main() async {
  // print('Hello World');
  // Future.delayed(Duration(seconds: 2), () => {
  //   print('Test')
  // });

  // await Future.delayed(Duration(seconds: 2));
  // print('Test');

  // await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print("Work done on element $element");
  // });
  // print("Finished");

  // hello, hello 3, hello 2, hello 4
  // print("Hello");
  // Future.delayed(Duration(seconds: 0)).whenComplete(() => {
  //   print("Hello 2")
  // });
  // print("Hello 3");
  // Future.delayed(Duration(seconds: 0)).whenComplete(() => {
  //   print("Hello 4")
  // });

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(55, 3);
  // bankMoneys.listen((event) {
  //   print(event);
  // });

  print(await bankMoneys.where((event) => event == 258).toList());
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while(_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}