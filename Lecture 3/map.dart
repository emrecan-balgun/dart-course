void main() {
  Map<String, int> users = {
    'Emre': 100,
    'Mehmet': 200,
    'Ali': 300,
  };

  // print("Mehmet's money: ${users['Mehmet']}");

  // for(var item in users.keys) {
  //   print("${item} - ${users[item]}");
  // };

  // for(var i = 0; i < users.length; i++) {
  //   print("${users.keys.elementAt(i)} - ${users.values.elementAt(i)}");
  // };

  Map<String, List<int>> ebBank = {
    "Emre": [10, 20, 30]
  };

  ebBank["Mehmet"] = [40, 50, 60];
  ebBank["Ali"] = [70, 80, 90];

  // for(var item in ebBank.keys) {
  //   for(var money in ebBank[item]!) {
  //      // ebBank key value it may not be full, to check it out "!" useable
  //     print("${item} - ${money}");
  //   };
  // };
  
  for(var name in ebBank.keys) {
    int result = 0;
    for(var money in ebBank[name]!) {
      result += money;
    };
    print("${name}'s balance: ${result}");
  };
}