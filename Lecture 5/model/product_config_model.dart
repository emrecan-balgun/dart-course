
class ProductConfig {
  static final ProductConfig instance = ProductConfig._("dhj23ksw2");

  final String apiKey;
  ProductConfig._(this.apiKey);
}

class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if(_instance == null) {
      _instance = ProductLazySingleton._init();
    }
    return _instance!;
  }

  ProductLazySingleton._init();
}