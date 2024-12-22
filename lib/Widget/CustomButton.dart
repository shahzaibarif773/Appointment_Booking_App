import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Theme/Colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      width: 60.w,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Tcolors.blue),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.sp,
            letterSpacing: 1,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
