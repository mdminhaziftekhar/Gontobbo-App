import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget4.dart';

import '../../constants/gontobbo_typography.dart';
import '../../routes/app_routes.dart';

class DriverSignupScreen extends StatefulWidget {
  const DriverSignupScreen({Key? key}) : super(key: key);

  @override
  State<DriverSignupScreen> createState() => _DriverSignupScreenState();
}

class _DriverSignupScreenState extends State<DriverSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Sign Up',
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
              SizedBox(height: 24.h),
              Row(
                children: [
                  SizedBox(width: 12.w),
                  Text(
                    'Full Name',
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
                    keyboardType: TextInputType.text,
                    style: bodyXLargeSemiBoldBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your full name',
                      hintStyle: bodySmall3Grey,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  SizedBox(width: 12.w),
                  Text(
                    'Your Email',
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
                    keyboardType: TextInputType.text,
                    style: bodyXLargeSemiBoldBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your NSU Email',
                      hintStyle: bodySmall3Grey,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  SizedBox(width: 12.w),
                  Text(
                    'Your Location',
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
                    keyboardType: TextInputType.text,
                    style: bodyXLargeSemiBoldBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Location',
                      hintStyle: bodySmall3Grey,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
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
                    keyboardType: TextInputType.text,
                    style: bodyXLargeSemiBoldBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      hintStyle: bodySmall3Grey,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  SizedBox(width: 12.w),
                  Text(
                    'Gender',
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
                  child: DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'male',
                        child: Text('Male'),
                      ),
                      DropdownMenuItem(
                        value: 'female',
                        child: Text('Female'),
                      ),
                      DropdownMenuItem(
                        value: 'others',
                        child: Text('Others'),
                      ),
                    ],
                    onChanged: (String? value) {
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Select Gender',
                      hintStyle: bodySmall3Grey,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15.h,
              ),
              AppButtonWidget4(
                buttonText: 'Sign up',
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
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Already Have an Account?',
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
                        Navigator.pushNamed(context, AppRoutes.driverLoginScreen);
                      },
                      child: Text(
                        'Allready have an account',
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
                  Image.asset('assets/pngs/line2.png', width: 110.w,),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
