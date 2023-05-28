import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget4.dart';
import 'package:gontobbo/screens/driver_notification/driver_notification.dart';

import '../../constants/gontobbo_typography.dart';
import '../../routes/app_routes.dart';

class DriverHomeScreen extends StatefulWidget {
  const DriverHomeScreen({Key? key}) : super(key: key);

  @override
  State<DriverHomeScreen> createState() => _DriverHomeScreenState();
}

class _DriverHomeScreenState extends State<DriverHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFF88DA09),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Driver Dashboard',
                        style: largeBoldWhite,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        'Welcome To',
                        style: largeWhite,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        height: 41.h,
                        width: 200.w,
                        child: Image.asset(
                          'assets/pngs/logo2.png',
                          height: 22.h,
                          width: 91.w,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DriverNotification(),));
                  },
                  child: Container(
                    height: 60.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF88DA09)),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 12.w),
                        Text('You Have 2 Ride Request', style: bodySmall2Black,),
                        SizedBox(width: 72.w),
                        Image.asset(
                          'assets/pngs/car2.png',
                          height: 48.h,
                          width: 54.w,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Image.asset(
                  'assets/pngs/featureImg3.png',
                  height: 316.h,
                  width: 320.w,
                ),
                SizedBox(
                  height: 10.h,
                ),

                AppButtonWidget4(buttonText: 'Go To Profile', height: 31.h, onPressed: (){
                  Navigator.pushNamed(context, AppRoutes.driverProfile);
                }),
              ],
            ),
          ),
        ));
  }
}
