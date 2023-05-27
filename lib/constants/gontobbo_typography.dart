import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

var h1BoldPrimary = GoogleFonts.montserrat(
  fontSize: 28.sp,
  fontWeight: FontWeight.w700,
  //It is actually the "line-height" property in figma screen.
  //The formula to add "line-height" in flutter is (figma line height / font size)
  height: 34.13.h / 28.sp,
  letterSpacing: 0.sp,
  color: const Color(0xFFF1862C),
);

var bodySmall = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFF1862C),
    height: 14.63.h / 12.sp,
    letterSpacing: 0.sp);

var bodyXLargeSemiBold = GoogleFonts.montserrat(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 25.h / 18.sp,
    letterSpacing: 0.2.sp);
