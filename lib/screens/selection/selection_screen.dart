import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget.dart';
import 'package:gontobbo/constants/gontobbo_typography.dart';

import '../../common_widgets/app_button_widget2.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 171.h),
            Text(
              'Are you a Passenger or a driver?',
              style: h2BoldPrimary,
            ),
            SizedBox(height: 10.h),
            Text(
              'You Can Change The Mode Later',
              style: bodySmall2,
            ),
            SizedBox(height: 95.h),
            AppButtonWidget(
                buttonText: 'Passenger',
                height: 50.h,
                width: 272.w,
                onPressed: () {}),
            SizedBox(height: 36.h),
            AppButtonWidget2(
                buttonText: 'Driver',
                height: 50.h,
                width: 272.w,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
