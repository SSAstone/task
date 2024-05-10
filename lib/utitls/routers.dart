import 'package:get/get.dart';
import 'package:mobile_app/screens/home/home_view.dart';
import 'package:mobile_app/screens/home/transfer_view.dart';

class Routers {
  // static const String splash = '/';
  static const String Transfer = '/transfer';
  static const String home = '/';

  static List<GetPage> routers = [
    GetPage(name: home, page: () => const HomeView()),
    GetPage(name: Transfer, page: () => const TransferView()),
  ];
}