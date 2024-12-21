import 'package:flutter/material.dart';

import 'core/utils/routes/app_router.dart';
import 'core/utils/routes/routes.dart';
import 'feature/splash/model_view/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      onGenerateRoute: AppRouter.getRoute,
      home: Splash(),
    );
  }
}


