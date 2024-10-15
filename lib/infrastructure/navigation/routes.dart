class Routes {
  static Future<String> get initialRoute async {
    return AUTH;
  }

  static const AUTH = '/auth';
  static const HOME = '/home';
  static const ORDER = '/order';
  static const DETAILS = '/details';
}
