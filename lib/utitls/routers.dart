import 'package:get/get.dart';
import 'package:mobile_app/screens/home/home_view.dart';
import 'package:mobile_app/screens/product/product_view.dart';

class Routers {
  // static const String splash = '/';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String home = '/';
  static const String product = '/product';

  static List<GetPage> routers = [
    GetPage(name: home, page: () => HomeView()),
    GetPage(name: product, page: () => const ProductView()),
  ];
}