import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickly/core/utils/Assets/app_images.dart';

class Splash extends StatefulWidget {
  const Splash({super.key, });



  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


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