import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/gontobbo_typography.dart';

class AppButtonWidget3 extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double? width, height;

  const AppButtonWidget3({
    Key? key,
    this.width = double.infinity,
    this.height = 58,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.0.w, right: 24.0.w),
      child: SizedBox(
        width: width?.w ?? double.infinity,
        height: height?.h ?? 58.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor:  const Color(0xFFF1862C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24.w),
          ),
          child: Text(
            buttonText,
            style: bodyXLargeSemiBold,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
