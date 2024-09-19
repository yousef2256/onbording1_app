import 'package:flutter/material.dart';
import 'package:onbording_app/UI/Home_page/homepage.dart';
import 'package:onbording_app/UI/register_page/registerpage.dart';
import 'package:onbording_app/UI/sign_in_page/signinpage.dart';
import 'package:onbording_app/core/routes/routes.dart';

class AppRouter {
  Route generateRourer(RouteSettings settings) {
    switch (settings.name) {
      case Routs.SignInPage:
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );
      case Routs.RegisterPage:
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        );
      case Routs.HomePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
