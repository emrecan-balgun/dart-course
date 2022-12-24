void main() {
  final customerMouse = Mouses.apple;

  switch (customerMouse) {
    case Mouses.magic:
      print('Magic Mouse');
      break;
    case Mouses.apple:
      print('Apple Mouse');
      break;
    case Mouses.logitech:
      print('Logitech Mouse');
      break;
    case Mouses.a4:
      print('A4 Mouse');
      break;
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4,
}