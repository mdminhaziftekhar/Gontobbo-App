import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/screens/available_rider/ride_request_pop_up.dart';
import 'package:gontobbo/screens/driver_information/driver_information_screen.dart';

import '../../constants/gontobbo_typography.dart';
import 'call_button_pop_up.dart';

class AvailableRiderScreen extends StatefulWidget {
  const AvailableRiderScreen(
      {Key? key, required this.route, required this.routeText})
      : super(key: key);

  final String route;
  final String routeText;

  @override
  State<AvailableRiderScreen> createState() => _AvailableRiderScreenState();
}

class _AvailableRiderScreenState extends State<AvailableRiderScreen> {
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
                  'Rider Available For',
                  style: h2BoldPrimary,
                ),
              ],
            ),
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFF1862C)),
                borderRadius: BorderRadius.circular(15.r),
              ),
              margin: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 12.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.route,
                        style: bodySmall2,
                      ),
                      Text(
                        widget.routeText,
                        style: bodySmall3Grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DriverInfoScreen(),));
              },
              child: _driverWidget(context, 0),
            ),
            SizedBox(height: 20.h),
            _driverWidget(context, 1),
            SizedBox(height: 20.h),
            _driverWidget(context, 2),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    ));
  }

  Widget _callButton(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                content:  CallButtonPopUp(number: driverList[index].phone),
              );
            });
      },
      child: Container(
        height: 37.h,
        width: 148.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 13.w,
            ),
            Image.asset(
              'assets/pngs/call_logo.png',
              height: 15.h,
              width: 15.w,
            ),
            SizedBox(
              width: 31.w,
            ),
            Text(
              'Call',
              style: bodySmall2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _rideRequestButton(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: const Color(0xFF88DA09),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),

                ),
                content: const RideRequestPopUp(),
              );
            });
      },
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

  Widget _driverWidget(BuildContext context, int index) {
    return Container(
      height: 153.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: const Color(0xFFF1862C),
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: const [BoxShadow(offset: Offset(0, 3), color: Colors.grey)],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 13.w,
              ),
              Image.asset(
                driverList[index].image,
                height: 39.h,
                width: 39.w,
              ),
              SizedBox(width: 9.w),
              Text(
                driverList[index].name,
                style: bodySmall2White,
              ),
              SizedBox(
                width: 111.w,
              ),
              Image.asset(
                'assets/pngs/star.png',
                height: 19.h,
                width: 19.w,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                driverList[index].rating,
                style: bodySmall2White,
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 13.w,
              ),
              Text(
                'Call:',
                style: font12White,
              ),
              SizedBox(width: 19.w),
              Text(
                driverList[index].name,
                style: bodySmall3Black,
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 13.w,
              ),
              Text(
                'Email:',
                style: font12White,
              ),
              SizedBox(width: 19.w),
              Text(
                driverList[index].email,
                style: bodySmall3Black,
              ),
            ],
          ),
          SizedBox(height: 13.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _callButton(context, index),
              SizedBox(
                width: 14.w,
              ),
              _rideRequestButton(context, index),
            ],
          ),
        ],
      ),
    );
  }
}

class DriverModel {
  final String image;
  final String name;
  final String car;
  final String email;
  final String phone;
  final String gender;
  final String location;
  final String rating;

  DriverModel({
    required this.image,
    required this.name,
    required this.car,
    required this.email,
    required this.phone,
    required this.gender,
    required this.location,
    required this.rating,
  });
}

List<DriverModel> driverList = [
  DriverModel(
    image: 'assets/pngs/driver1.png',
    name: 'MD Al Amin',
    car: 'Toyota Allion',
    email: 'md.alamin@northsouth.edu',
    phone: '01715259470',
    gender: 'Male',
    location: 'Banani <-> NSU',
    rating: '4.8 (7)',
  ),
  DriverModel(
    image: 'assets/pngs/driver2.png',
    name: 'Zaka Zesan',
    car: 'Toyota Corolla X',
    email: 'md.alamin@northsouth.edu',
    phone: '01715259470',
    gender: 'Male',
    location: 'Banani <-> NSU',
    rating: '4.9(40)',
  ),
  DriverModel(
    image: 'assets/pngs/driver3.png',
    name: 'Ifat Mahmud',
    car: 'Toyota Allion',
    email: 'md.alamin@northsouth.edu',
    phone: '01715259470',
    gender: 'Male',
    location: 'Banani <-> NSU',
    rating: '4.8 (7)',
  ),
];
