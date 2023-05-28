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
var largeBoldBlack = GoogleFonts.montserrat(
  fontSize: 24.sp,
  fontWeight: FontWeight.w700,
  //It is actually the "line-height" property in figma screen.
  //The formula to add "line-height" in flutter is (figma line height / font size)
  height: 29.26.h / 24.sp,
  letterSpacing: 0.sp,
  color: Colors.black,
);
var largeBoldWhite = GoogleFonts.montserrat(
  fontSize: 24.sp,
  fontWeight: FontWeight.w700,
  //It is actually the "line-height" property in figma screen.
  //The formula to add "line-height" in flutter is (figma line height / font size)
  height: 29.26.h / 24.sp,
  letterSpacing: 0.sp,
  color: Colors.white,
);
var largeWhite = GoogleFonts.montserrat(
  fontSize: 24.sp,
  fontWeight: FontWeight.w400,
  //It is actually the "line-height" property in figma screen.
  //The formula to add "line-height" in flutter is (figma line height / font size)
  height: 29.26.h / 24.sp,
  letterSpacing: 0.sp,
  color: Colors.white,
);
var h2BoldPrimary = GoogleFonts.montserrat(
  fontSize: 18.sp,
  fontWeight: FontWeight.w700,
  //It is actually the "line-height" property in figma screen.
  //The formula to add "line-height" in flutter is (figma line height / font size)
  height: 21.94.h / 18.sp,
  letterSpacing: 0.sp,
  color: const Color(0xFFF1862C),
);
var h2BoldBlack = GoogleFonts.montserrat(
  fontSize: 18.sp,
  fontWeight: FontWeight.w700,
  //It is actually the "line-height" property in figma screen.
  //The formula to add "line-height" in flutter is (figma line height / font size)
  height: 21.94.h / 18.sp,
  letterSpacing: 0.sp,
  color: Colors.black,
);
var bodySmall = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFF1862C),
    height: 14.63.h / 12.sp,
    letterSpacing: 0.sp);
var bodySmall2 = GoogleFonts.montserrat(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xFFF1862C),
    height: 15.85.h / 13.sp,
    letterSpacing: 0.sp);
var bodySmall2Green = GoogleFonts.montserrat(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF88DA09),
    height: 15.85.h / 13.sp,
    letterSpacing: 0.sp);
var bodySmall2Black = GoogleFonts.montserrat(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    height: 15.85.h / 13.sp,
    letterSpacing: 0.sp);

var bodySmall3Black = GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    height: 12.19.h / 10.sp,
    letterSpacing: 0.sp);
var bodySmall3Grey = GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    height: 12.19.h / 10.sp,
    letterSpacing: 0.sp);

var bodyXLargeSemiBold = GoogleFonts.montserrat(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 25.h / 18.sp,
    letterSpacing: 0.2.sp);
var bodyXLargeSemiBoldBlack = GoogleFonts.montserrat(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    height: 25.h / 18.sp,
    letterSpacing: 0.2.sp);
var bodyMedium = GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0xFFF186f2C),
    height: 19.5.h / 16.sp,
    letterSpacing: 0.sp);
var bodyMediumGreen = GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF88DA09),
    height: 19.5.h / 16.sp,
    letterSpacing: 0.sp);
var bodySmallMediumGrey = GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: Colors.grey,
    height: 17.7.h / 14.sp,
    letterSpacing: 0.sp);

var bodySmallMediumWhite = GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    height: 17.7.h / 14.sp,
    letterSpacing: 0.sp);