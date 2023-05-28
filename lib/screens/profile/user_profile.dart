import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget3.dart';
import 'package:gontobbo/routes/app_routes.dart';
import 'package:gontobbo/screens/onboarding/onboarding_screen.dart';

import '../../constants/gontobbo_typography.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1862C),
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
        actions: [
          Image.asset(
            'assets/pngs/notification.png',
            height: 20.h,
            width: 20.h,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150.h,
              decoration: const BoxDecoration(
                color: Color(0xFFF1862C),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My Profile',
                    style: largeBoldWhite,
                  ),
                  SizedBox(height: 20.h),
                  Image.asset(
                    'assets/pngs/profile.png',
                    height: 74.h,
                    width: 74.w,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
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
                  border: Border.all(color: const Color(0xFFF1862C)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Al Aowshad Himel',
                      style: bodySmall2Black,
                    ),
                    SizedBox(
                      width: 146.w,
                    ),
                    Image.asset(
                      'assets/pngs/pen.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                SizedBox(width: 12.w),
                Text(
                  'Email',
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
                  border: Border.all(color: const Color(0xFFF1862C)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'al.aowshad@northsouth.edu',
                      style: bodySmall2Black,
                    ),
                    SizedBox(
                      width: 71.w,
                    ),
                    Image.asset(
                      'assets/pngs/pen.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                SizedBox(width: 12.w),
                Text(
                  'Location',
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
                  border: Border.all(color: const Color(0xFFF1862C)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Mirpur',
                      style: bodySmall2Black,
                    ),
                    SizedBox(
                      width: 214.w,
                    ),
                    Image.asset(
                      'assets/pngs/pen.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
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
                  border: Border.all(color: const Color(0xFFF1862C)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '01644426943',
                      style: bodySmall2Black,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
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
                  border: Border.all(color: const Color(0xFFF1862C)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Male',
                      style: bodySmall2Black,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppButtonWidget3(buttonText: 'Update Profile', height:40.h ,onPressed: () {

            },),
            SizedBox(height: 20.h),
          ],
        ),
      ),
          bottomNavigationBar: Container(
            height: 70.h,
            width: double.infinity,
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
              },
              child: Row(
                children: [
                  SizedBox(width: 14.w),
                  Image.asset('assets/pngs/logoutbtn1.png', height: 24.h, width: 24.w,),
                  SizedBox(width: 8.w),
                  Text('Logout', style: bodySmallMedium,),
                ],
              ),
            ),
          ),
    ));
  }
}
