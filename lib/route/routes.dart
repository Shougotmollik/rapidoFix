import 'package:get/get.dart';
import 'package:rapidofix/route/route_names.dart';
import 'package:rapidofix/views/auth/login_screen.dart';
import 'package:rapidofix/views/auth/on_boarding_screen.dart';
import 'package:rapidofix/views/auth/otp_verification_screen.dart';
import 'package:rapidofix/views/auth/splash_screen.dart';
import 'package:rapidofix/views/main_nav/home/home_screen.dart';
import 'package:rapidofix/views/main_nav/main_nav_bar_screen.dart';

class Routes {
  static final pages = [
    GetPage(name: RouteNames.splashScreen, page: () => SplashScreen()),
    GetPage(name: RouteNames.onBoardingScreen, page: () => OnBoardingScreen()),
    GetPage(name: RouteNames.loginScreen, page: () => LoginScreen()),
    GetPage(
      name: RouteNames.otpVerificationScreen,
      page: () => OtpVerificationScreen(),
    ),

    GetPage(name: RouteNames.navBarScreen, page: () => MainNavBarScreen()),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => HomeScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
