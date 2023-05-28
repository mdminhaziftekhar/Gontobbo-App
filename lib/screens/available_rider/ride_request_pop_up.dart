import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/gontobbo_typography.dart';

class RideRequestPopUp extends StatefulWidget {
  const RideRequestPopUp({Key? key}) : super(key: key);

  @override
  State<RideRequestPopUp> createState() => _RideRequestPopUpState();
}

class _RideRequestPopUpState extends State<RideRequestPopUp> {
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
            'assets/pngs/done_logo.png',
            height: 73.h,
            width: 73.w,
          ),
          SizedBox(
            height: 29.h,
          ),
          Text('Ride Request Sent', style: largeBoldWhite,),

        ],
      ),
    );
  }
}
