import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget4.dart';

import '../../constants/gontobbo_typography.dart';
import '../../routes/app_routes.dart';

class DriverLoginScreen extends StatefulWidget {
  const DriverLoginScreen({Key? key}) : super(key: key);

  @override
  State<DriverLoginScreen> createState() => _DriverLoginScreenState();
}

class _DriverLoginScreenState extends State<DriverLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21.h),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/pngs/logo.png',
                        height: 152.h,
                        width: 184.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Log In',
                    style: largeBoldBlack,
                  )
                ]),
                SizedBox(height: 17.h),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Please Enter Your Phone Number & Password',
                    style: bodySmall2Black,
                  )
                ]),
                SizedBox(height: 35.h),
                Row(
                  children: [
                    SizedBox(width: 12.w),
                    Text(
                      'Phone Number',
                      style: bodySmall3Black,
                    )
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Container(
                    height: 53.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF88DA09)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: bodyXLargeSemiBoldBlack,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 17.h),
                Row(
                  children: [
                    SizedBox(width: 12.w),
                    Text(
                      'Password',
                      style: bodySmall3Black,
                    )
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Container(
                    height: 53.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF88DA09)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: bodyXLargeSemiBoldBlack,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                AppButtonWidget4(
                  buttonText: 'Login',
                  height: 47.h,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.driverHomeScreen);
                  },
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: bodySmall2Green,
                        ))
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Text(
                          'Don’t Have an Account?',
                          style: bodySmall2Black,
                        ))
                  ],
                ),
                SizedBox(
                  height: 9.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.driverSignupScreen);
                        },
                        child: Text(
                          'Create an account',
                          style: bodySmall2Green,
                        ))
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/pngs/line2.png', width: 100.w,),
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}
