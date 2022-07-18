import 'package:get/get.dart';

import '../modules/auth/forget_password/bindings/forget_password_binding.dart';
import '../modules/auth/forget_password/views/forget_password_view.dart';
import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/register/bindings/register_binding.dart';
import '../modules/auth/register/views/register_view.dart';
import '../modules/home/error/bindings/error_binding.dart';
import '../modules/home/error/views/error_view.dart';
import '../modules/home/onboarding/bindings/onboarding_binding.dart';
import '../modules/home/onboarding/views/onboarding_view.dart';
import '../modules/home/splash/bindings/splash_binding.dart';
import '../modules/home/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

 static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ERROR,
      page: () => const ErrorView(),
      binding: ErrorBinding(),
    ),
  ];
}
