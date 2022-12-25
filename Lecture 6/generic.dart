void main() {
  final user = User(data: 1);
  final admin = AdminUser();

  // removeUserAll(user); // dont work because User is not AdminUser
  removeUserAll(admin);
}

void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

class User<T> {
  T data;
  User({
    required this.data
  });
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
    print('User removed');
  }
}