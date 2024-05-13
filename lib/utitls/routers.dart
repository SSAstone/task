import 'package:get/get.dart';
import 'package:mobile_app/screens/boarding/earn_boarding.dart';
import 'package:mobile_app/screens/boarding/referral_boarding.dart';
import 'package:mobile_app/screens/boarding/unlock_boarding.dart';
import 'package:mobile_app/screens/boarding/welcome_boarding.dart';
import 'package:mobile_app/screens/home/home_view.dart';
// import 'package:mobile_app/screens/home/home_view.dart';
import 'package:mobile_app/screens/home/splash_view.dart';
import 'package:mobile_app/screens/password_view.dart';
import 'package:mobile_app/screens/home/transfer_view.dart';

class Routers {
  static const String splash = '/';
  static const String welcomeBoarding = '/welcome-boarding';
  static const String earnBoarding = '/earn-boarding';
  static const String unlockBoarding = '/unlock-boarding';
  static const String referralBoarding = '/referral-boarding';
  static const String passwordPin = '/password-pin';
  static const String homeView = '/home-view';
  static const String transferView = '/transfer-view';

  static List<GetPage> routers = [
    GetPage(name: splash, page: () => const SplashView()),
    GetPage(name: welcomeBoarding, page: () => const WelcomeBoarding()),
    GetPage(name: earnBoarding, page: () => const EarnBoarding()),
    GetPage(name: unlockBoarding, page: () => const UnlockBoarding()),
    GetPage(name: referralBoarding, page: () => const ReferralBoarding()),
    GetPage(name: passwordPin, page: () => const Password()),
    GetPage(name: homeView, page: () => const HomeView()),
    GetPage(name: transferView, page: () => const TransferView()),
  ];
}