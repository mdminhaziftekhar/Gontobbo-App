import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/constants/gontobbo_typography.dart';

class CallButtonPopUp extends StatefulWidget {
  const CallButtonPopUp({Key? key, required this.number}) : super(key: key);
  final String number;
  @override
  State<CallButtonPopUp> createState() => _CallButtonPopUpState();
}

class _CallButtonPopUpState extends State<CallButtonPopUp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      width: 233.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 36.25.h,
          ),
          Image.asset(
            'assets/pngs/call_logo2.png',
            height: 73.h,
            width: 73.w,
          ),
          SizedBox(
            height: 29.h,
          ),
          Text(widget.number, style: largeBoldBlack,),

        ],
      ),
    );
  }
}
