import 'package:flutter/material.dart';
import 'package:halolfarm/screens/pages/account_page.dart';
import 'package:halolfarm/screens/pages/home_page.dart';
import 'package:halolfarm/screens/pages/language_page.dart';
import 'package:halolfarm/screens/pages/onboard_page.dart';
import 'package:halolfarm/screens/pages/sign_up_page.dart';
import 'package:halolfarm/screens/pages/signup_or_signin_page.dart';
import 'package:halolfarm/screens/pages/sms_verify_page.dart';

class MyRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const LanguagePage(),
        );
      case '/board':
        return MaterialPageRoute(
          builder: (_) => const OnboardPage(),
        );
      case '/or':
        return MaterialPageRoute(
          builder: (_) => const SignUpOrSignInPage(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );
      case '/sms':
        return MaterialPageRoute(
          builder: (_) => const SmsVerifyPage(),
        );
      case '/ac':
        return MaterialPageRoute(
          builder: (_) => const AccounPage(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }
}
