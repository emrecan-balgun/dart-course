void main() {
  final int classDegree = 2;
  bool isSuccess = false;

  const int successDegree = 1;

  switch(classDegree) {
    case successDegree:
      print("You are in the first degree!");
      isSuccess = true;
      break;
    case 2:
      print("You are in the second degree!");
      isSuccess = true;
      break;
    case 3:
      print("You are in the third degree!");
      isSuccess = true;
      break;
    default:
      print("You are not in the first, second or third degree!");
      isSuccess = true;
      break;
  }

  print("Is success: " + "$isSuccess");
}