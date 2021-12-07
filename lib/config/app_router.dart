import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../screens/login/login.dart';
import '../screens/otp/phone_login_screen.dart';
import '../screens/home/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return PageTransition(
            child: const LoginScreen(), type: PageTransitionType.bottomToTop);

      case PhoneLoginScreen.routeName:
        return PageTransition(
            child: const PhoneLoginScreen(),
            type: PageTransitionType.bottomToTop);

      case HomeScreen.routeName:
        return PageTransition(
            child: const HomeScreen(), type: PageTransitionType.bottomToTop);

      // case OTPScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const OTPScreen());

      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
