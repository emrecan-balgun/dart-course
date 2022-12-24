class User2 {
  final String name;
  int _money;

  int get money => _money;

  set money(int? money) {
    // if(money == null) {
    //   _money = 0;
    // } else {
    //  _money = money;
    // }
    _money = money == null ? 0 : money;
  }

  final int? age;
  final String? city;

  late final String userCode;

  User2(this.name, this._money, {this.age,this.city}) {
    userCode = (city ?? 'Istanbul') + name;
  }
}