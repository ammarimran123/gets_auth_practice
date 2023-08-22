import 'package:get/get.dart';
import 'package:getx_auth_practice/modules/signup/signup_binding.dart';
import 'package:getx_auth_practice/modules/signup/signup_view.dart';

import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
     GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
     GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
  ];
}
