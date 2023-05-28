import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/gontobbo_typography.dart';

class DriverInfoScreen extends StatefulWidget {
  const DriverInfoScreen({Key? key}) : super(key: key);

  @override
  State<DriverInfoScreen> createState() => _DriverInfoScreenState();
}

class _DriverInfoScreenState extends State<DriverInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
                'assets/pngs/left_arrow.png',
                height: 12.h,
                width: 8.w,
              ),
              SizedBox(width: 4.w),
              Text(
                'Back',
                style: bodySmall2,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Driver Information',
                  style: h2BoldPrimary,
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/pngs/driver1.png',
                  height: 134.h,
                  width: 134.w,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            _nameWidget(context),
            SizedBox(height: 30.h),
            _detailsWidget(context),
            SizedBox(height: 30.h),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               _callButton(context),
               SizedBox(width: 14.w),
               _rideRequestButton(context),

             ],
           ),
            SizedBox(height: 30.h),
            _ratingWidget(context),
          ],
        ),
      ),
    ));
  }

  Widget _ratingWidget(BuildContext context){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Container(
        height: 51.h,
        width: 310.w,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFF1862C)), 
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Give Rating', style: bodySmall2,),
            SizedBox(width: 9.w),
            Image.asset('assets/pngs/star2.png', height: 20.h, width: 20.w,),
            SizedBox(width: 3.w),
            Image.asset('assets/pngs/star2.png', height: 20.h, width: 20.w,),
            SizedBox(width: 3.w),
            Image.asset('assets/pngs/star2.png', height: 20.h, width: 20.w,),
            SizedBox(width: 3.w),
            Image.asset('assets/pngs/star2.png', height: 20.h, width: 20.w,),
            SizedBox(width: 3.w),
            Image.asset('assets/pngs/star2.png', height: 20.h, width: 20.w,),
            SizedBox(width: 3.w),
          ],
        ),
      ),
    );
  }

  Widget _callButton(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 37.h,
        width: 148.w,
        decoration: BoxDecoration(
          color: const Color(0xFFF1862C),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 13.w,
            ),
            Image.asset(
              'assets/pngs/call_logo3.png',
              height: 15.h,
              width: 15.w,
            ),
            SizedBox(
              width: 31.w,
            ),
            Text(
              'Call',
              style: bodySmall2White,
            ),
          ],
        ),
      ),
    );
  }

  Widget _rideRequestButton(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 37.h,
        width: 148.w,
        decoration: BoxDecoration(
          color: const Color(0xFF88DA09),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 13.w,
            ),
            Image.asset(
              'assets/pngs/send_logo.png',
              height: 15.h,
              width: 15.w,
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              'Ride request',
              style: bodySmall2Black,
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailsWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Car',
                style: bodyMedium,
              ),
              SizedBox(width: 48.w),
              Text(
                ':',
                style: bodyMedium,
              ),
              SizedBox(width: 7.w),
              Text(
                'Toyota Allion',
                style: bodySmallMediumBlack,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Text(
                'Email',
                style: bodyMedium,
              ),
              SizedBox(width: 29.w),
              Text(
                ':',
                style: bodyMedium,
              ),
              SizedBox(width: 7.w),
              Text(
                'md.alamin@northsouth.edu',
                style: bodySmallMediumBlack,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Text(
                'Phone',
                style: bodyMedium,
              ),
              SizedBox(width: 22.w),
              Text(
                ':',
                style: bodyMedium,
              ),
              SizedBox(width: 7.w),
              Text(
                '01715259470',
                style: bodySmallMediumBlack,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Text(
                'Gender',
                style: bodyMedium,
              ),
              SizedBox(width: 15.w),
              Text(
                ':',
                style: bodyMedium,
              ),
              SizedBox(width: 7.w),
              Text(
                'Male',
                style: bodySmallMediumBlack,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Text(
                'Location',
                style: bodyMedium,
              ),
              SizedBox(width: 4.w),
              Text(
                ':',
                style: bodyMedium,
              ),
              SizedBox(width: 7.w),
              Text(
                'Banani <-> NSU',
                style: bodySmallMediumBlack,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Text(
                'Rating',
                style: bodyMedium,
              ),
              SizedBox(width: 21.w),
              Text(
                ':',
                style: bodyMedium,
              ),
              SizedBox(width: 7.w),
              Text(
                '4.8 (7)',
                style: bodySmallMediumBlack,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _nameWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 42.h,
          width: 295.w,
          decoration: BoxDecoration(
            color: const Color(0xFFF1862C),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MD Al Amin',
                style: bodyXLargeSemiBold,
              )
            ],
          ),
        ),
      ],
    );
  }
}
