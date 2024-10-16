// ignore_for_file: constant_identifier_names

class Routes {
  static Future<String> get initialRoute async {
    return AUTH;
  }

  static const AUTH = '/auth';
  static const CART = '/cart';
  static const DETAILS = '/details';
  static const HOME = '/home';
  static const NOTIFICATION = '/notification';
  static const USER = '/user';
  static const WALLET = '/wallet';
  static const MAIN = '/main';
}
