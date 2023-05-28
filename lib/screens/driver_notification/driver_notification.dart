import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/common_widgets/app_button_widget4.dart';
import 'package:gontobbo/routes/app_routes.dart';
import 'package:gontobbo/screens/confirmation/confirmation.dart';

import '../../constants/gontobbo_typography.dart';

class DriverNotification extends StatefulWidget {
  const DriverNotification({Key? key}) : super(key: key);

  @override
  State<DriverNotification> createState() => _DriverNotificationState();
}

class _DriverNotificationState extends State<DriverNotification> {
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
                        'Notification',
                        style: largeBoldWhite,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'Passenger Request ',
                        style: bodySmallMediumWhite,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                _notificationWidget(context, 0),
                SizedBox(height: 12.h),
                _notificationWidget(context, 1),
                SizedBox(height: 20.h),
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
              },),
          ),
          ),

        );
  }

  Widget _notificationWidget(BuildContext context, int index){
    return Container(
      height: 236.h,
      width: 311.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFF88DA09)),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, 5))]
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h,),
          Container(
            height: 48.h,
            width: 293.w,
            decoration: BoxDecoration(
              color: const Color(0xFFFFDBBD),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Align(alignment: Alignment.centerLeft, child: Padding(
              padding:  EdgeInsets.only(left: 20.0.w),
              child: Text(notifications[index].name, style: bodySmallMediumBlack,),
            )),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 48.h,
            width: 293.w,
            decoration: BoxDecoration(
              color: const Color(0xFFFFDBBD),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Align(alignment: Alignment.centerLeft, child: Padding(
              padding:  EdgeInsets.only(left: 20.0.w),
              child: Text(notifications[index].gender, style: bodySmallMediumBlack,),
            )),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 48.h,
            width: 293.w,
            decoration: BoxDecoration(
              color: const Color(0xFFFFDBBD),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Align(alignment: Alignment.centerLeft, child: Padding(
              padding:  EdgeInsets.only(left: 20.0.w),
              child: Text(notifications[index].contact, style: bodySmallMediumBlack,),
            )),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _acceptButton(context, index),
              SizedBox(width: 18.w),
              _declineButton(context, index),
            ],
          ),

        ],
      ),
    );
  }
  Widget _acceptButton(BuildContext context, int index){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ConfirmationScreen();
        },));
      },
      child: Container(
        height: 41.h,
        width: 139.w,
        color: Color(0xFF88DA09),
       child: Align(alignment: Alignment.center, child: Text('Accept', style: bodySmallMediumWhite,)),
      ),
    );
  }

  Widget _declineButton(BuildContext context, int index){
    return Container(
      height: 41.h,
      width: 120.w,
      color: Colors.red,
      child: Align(alignment: Alignment.center, child: Text('Decline', style: bodySmallMediumWhite, textAlign: TextAlign.center,)),
    );
  }
}

List<NotificationModel> notifications = [
  NotificationModel('Name: Al Aowshad Himel', 'Gender: Male', 'Contact: 014524861475'),
  NotificationModel('Name: Sadia Jahan', 'Gender: Female', 'Contact: 015645632475'),
];

class NotificationModel {
  final String name;
  final String gender;
  final String contact;

  NotificationModel(this.name, this.gender, this.contact);
}
