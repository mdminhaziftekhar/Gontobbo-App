import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget4.dart';
import 'package:gontobbo/routes/app_routes.dart';
import 'package:gontobbo/screens/confirmation/confirmation.dart';
import 'package:gontobbo/screens/ride_complete/ride_complete.dart';

import '../../constants/gontobbo_typography.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
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
                      'Confirmation',
                      style: largeBoldWhite,
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 297.w,
                      child: Wrap(children: [
                        Text(
                          'Your Passenger will show up at any minute!',
                          style: bodySmallMediumWhite,
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              Image.asset(
                'assets/pngs/car_logo4.png',
                height: 135.h,
                width: 135.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 41.h,
                width: 311.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xFF88DA09),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Request Accepted',
                    style: bodySmallMediumWhite,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _callButton(context),
                  SizedBox(
                    width: 20.w,
                  ),
                  _messageButton(context),
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Text(
                'Ride Completed!',
                style: bodySmallMediumBlack,
              ),
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

  Widget _callButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return RideCompleteScreen();
          },
        ));
      },
      child: Container(
        height: 41.h,
        width: 139.w,
        color: Color(0xFFF1862C),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 12.w),
            Image.asset(
              'assets/pngs/call_logo3.png',
              height: 20.h,
              width: 20.w,
            ),
            SizedBox(width: 30.w),
            Text(
              'Call',
              style: bodySmallMediumWhite,
            ),
          ],
        ),
      ),
    );
  }

  Widget _messageButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return RideCompleteScreen();
          },
        ));
      },
      child: Container(
        height: 41.h,
        width: 139.w,
        color: const Color(0xFF00573A),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 12.w),
            Image.asset(
              'assets/pngs/message.png',
              height: 20.h,
              width: 20.w,
            ),
            SizedBox(width: 22.w),
            Text(
              'Message',
              style: bodySmallMediumWhite,
            ),
          ],
        ),
      ),
    );
  }
}
