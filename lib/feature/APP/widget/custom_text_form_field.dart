import 'package:flutter/material.dart';
import '../../../core/utils/styles/styles.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.prefixIcon,
    required this.hintText,
  });

  final String? suffixIcon;
  final String? prefixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 57,
      alignment: Alignment.center,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white10.withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Colors.grey, width: 3),
          ),
          suffixIcon: suffixIcon != null
              ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(suffixIcon!),
          )
              : null,
          prefixIcon: prefixIcon != null
              ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(prefixIcon!),
          )
              : null,
          hintText: hintText,
          hintStyle: AppTextStyles.textStyle16Login,
        ),
      ),
    );
  }
}
