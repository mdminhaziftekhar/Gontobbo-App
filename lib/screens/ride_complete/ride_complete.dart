import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget4.dart';
import 'package:gontobbo/routes/app_routes.dart';
import 'package:gontobbo/screens/confirmation/confirmation.dart';

import '../../constants/gontobbo_typography.dart';

class RideCompleteScreen extends StatefulWidget {
  const RideCompleteScreen({Key? key}) : super(key: key);

  @override
  State<RideCompleteScreen> createState() => _RideCompleteScreenState();
}

class _RideCompleteScreenState extends State<RideCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF88DA09),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Image.asset(
                  'assets/pngs/left_arrow2.png',
                  height: 20.h,
                  width: 8.w,
                ),
                SizedBox(width: 4.w),
                Text(
                  'Back',
                  style: bodySmall2White,
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 120.h,
                decoration: const BoxDecoration(
                  color: Color(0xFF88DA09),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ride Complete',
                      style: largeBoldWhite,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Congratulations!',
                      style: bodySmallMediumWhite,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              Image.asset(
                'assets/pngs/congo.png',
                height: 105.h,
                width: 105.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text('Congratulations!', style: largeBoldBlack,),
              SizedBox(height: 30.h,),
              Image.asset('assets/pngs/featureImg4.png', height: 213.h, width: 302.w,),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: AppButtonWidget4(
            height: 40.h,
            buttonText: 'Go to profile',
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.driverProfile);
            },
          ),
        ),
      ),
    );
  }
}
