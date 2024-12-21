import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickly/core/utils/icons/icons.dart';
import '../../../../core/utils/Assets/app_images.dart';
import '../../../../core/utils/Spacing/app_spacing.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _iconAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _iconAnimation = Tween<Offset>(
      begin: Offset(0, .9),
      end: Offset(0, -0.4),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    verticalSpace(100),
                    SlideTransition(
                      position: _iconAnimation,
                      child: Image.asset(
                        AppImages.splashImage,
                        width: 190,
                        height: 190,
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: Column(
                        children: [
                          Container(
                            width: 350,
                            height: 57,
                            alignment: Alignment.center,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white10.withOpacity(0.5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 3),
                                ),
                                prefixIcon: Image.asset(Iconsassets.eyepassword),
                                hintText: 'اسم المستخدم',
                                hintStyle: TextStyle(
                                  fontFamily: GoogleFonts.cairo().fontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffDFDFDF),
                                ),
                              ),
                            ),
                          ),
                          verticalSpace(20),
                          Container(
                            width: 350,
                            height: 57,
                            alignment: Alignment.center,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white10.withOpacity(0.5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 3),
                                ),
                                suffixIcon: Image.asset(Iconsassets.eye),
                                prefixIcon: Image.asset(Iconsassets.eyepassword),
                                hintText: 'الرقم السري',
                                hintStyle: TextStyle(
                                  fontFamily: GoogleFonts.cairo().fontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffDFDFDF),
                                ),
                              ),
                            ),
                          ),
                          verticalSpace(20),
                          InkWell(
                            child: Container(
                              width: 350,
                              height: 57,
                              alignment: Alignment.center,
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.cairo().fontFamily,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.orange),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.orange,
                                  width: 3,
                                ),
                              ),
                            ),
                          ),
                          verticalSpace(20),
                          Text(
                            "هل نسيت الرقم السري ؟",
                            style: TextStyle(
                                fontFamily: GoogleFonts.cairo().fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDFDFDF)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
