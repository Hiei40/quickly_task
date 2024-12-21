import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quickly/core/utils/Assets/app_images.dart';

import '../../../../core/utils/routes/routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushNamed(context, Routes.login);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(AppImages.splashImage),
            ],
          ),
        ),
      ),
    );
  }
}
