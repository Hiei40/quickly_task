import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors/colors.dart';

abstract class AppTextStyles{

  static TextStyle textStyle18Login = TextStyle(
      fontFamily: GoogleFonts.cairo().fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Appcolors.orange);

static TextStyle textStyle16Login =  TextStyle(
  fontFamily: GoogleFonts.cairo().fontFamily,
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Appcolors.grey,
);



}


