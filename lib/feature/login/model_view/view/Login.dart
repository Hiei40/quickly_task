import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickly/core/utils/icons/icons.dart';
import '../../../../core/utils/Assets/app_images.dart';
import '../../../../core/utils/Spacing/app_spacing.dart';
import '../../../APP/widget/custom_button.dart';
import '../../../APP/widget/custom_text_form_field.dart';

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
      begin: const Offset(0, .9),
      end: const Offset(0, -0.4),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _fadeAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

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
                    verticalSpace(20),
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: Column(
                        children: [
                          const CustomTextFormField(
                            hintText:'اسم المستخدم',
                            prefixIcon:Iconsassets.eyepassword,
                          ),
                          verticalSpace(20),
                          const CustomTextFormField(
                            hintText: 'الرقم السري',
                            suffixIcon: Iconsassets.eye,
                            prefixIcon: Iconsassets.eyepassword,
                          ),
                          verticalSpace(20),
                          CustomButton(
                            text: 'تسجيل الدخول',
                            onTap: () {},
                          ),
                          verticalSpace(20),
                          Text(
                            "هل نسيت الرقم السري ؟",
                            style: TextStyle(
                                fontFamily: GoogleFonts.cairo().fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffDFDFDF)),
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
