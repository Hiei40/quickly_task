
import 'package:flutter/material.dart';
import 'package:quickly/core/utils/routes/routes.dart';

import '../../../feature/login/model_view/view/Login.dart';
import '../../../feature/splash/model_view/view/splash.dart';

class AppRouter {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const Login());
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      default:
        return MaterialPageRoute(builder: (_) => const Splash());
    }
  }
}