import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget3.dart';
import 'package:gontobbo/constants/gontobbo_typography.dart';
import 'package:gontobbo/routes/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 217.h,
              decoration: const BoxDecoration(
                color: Color(0xFFF1862C),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Passenger Dashboard',
                    style: largeBoldWhite,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'Welcome To',
                    style: largeWhite,
                  ),
                  SizedBox(
                    height: 16.h,
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
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.selectRouteScreen);
              },
              child: Container(
                height: 78.h,
                width: 320.w,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFF1862C)),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 12.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Where To Go?',
                          style: bodyMedium,
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'Select Your Destination',
                          style: bodySmallMediumGrey,
                        ),
                      ],
                    ),
                    SizedBox(width: 72.w),
                    Image.asset(
                      'assets/pngs/car.png',
                      height: 48.h,
                      width: 54.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Stack(children: [
              Image.asset(
                'assets/pngs/featureImg.png',
                height: 113.h,
                width: 320.w,
              ),
              Positioned(
                child: SizedBox(
                    width: 160.w,
                    child: Wrap(
                      children: [
                        Text(
                          'DESIGNATED RIDERS FOR WOMAN',
                          style: bodySmallMediumWhite,
                        ),
                      ],
                    )),
                top: 40.h,
                left: 25.w,
              ),
              Positioned(
                child: Image.asset(
                  'assets/pngs/phone.png',
                  height: 60.25.h,
                  width: 60.11.w,
                ),
                top: 30.h,
                right: 30.w,
              ),
            ]),
            SizedBox(
              height: 20.h,
            ),
            Image.asset(
              'assets/pngs/featureImg2.png',
              height: 113.h,
              width: 320.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            AppButtonWidget3(buttonText: 'Go To Profile', height: 31.h, onPressed: (){}),
          ],
        ),
      ),
    ));
  }
}
