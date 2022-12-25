void main() {
  IDatabase database = SQL();
  database = MongoDB();
  database.write();
}

// single responsibility principle
// tek sorumluluk kuralı - bir sınıfın tek bir iş yapması gerekiyor
class UserManager {
  String name;

  UserManager({
    required this.name,
  });
  
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;
  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName('Name');
    changeLocalization();
  }

    void changeLocalization() {
    print('object');
  }
}

// open closed principle
// açık kapalı kuralı - bir sınıfın değişiklik yapılmasına kapalı olması gerekiyor
class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  final String category;

  ProductCategories(this.category, String name, String money) : super(name, money);
}

// liskov substitution principle
// liskov yerine geçme kuralı - bir sınıfın yerine başka bir sınıf geçebilmesi gerekiyor
abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    print('SQL');
  }
}

class MongoDB extends IDatabase {
  @override
  void write() {
    print('MongoDB');
  }
}

// interface segregation principle
// arayüz ayrımı kuralı - bir sınıfın gereksiz arayüzleri olmaması gerekiyor
abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    print('Location');
  }
}

// dependency inversion principle
// bağımlılık tersine çevirme kuralı - bir sınıfın başka bir sınıfı doğrudan kullanmaması gerekiyor
abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;
  
  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {
    iphoneCameraRead.readQR();
  }
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    print('Iphone');
  }
}