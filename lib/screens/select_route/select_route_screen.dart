import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontobbo/constants/gontobbo_typography.dart';
import 'package:gontobbo/screens/available_rider/available_rider.dart';

class SelectRouteScreen extends StatefulWidget {
  const SelectRouteScreen({Key? key}) : super(key: key);

  @override
  State<SelectRouteScreen> createState() => _SelectRouteScreenState();
}

class _SelectRouteScreenState extends State<SelectRouteScreen> {
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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Our Routes',
                  style: h2BoldPrimary,
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Please Select Your Route',
              style: bodySmallMediumGrey,
            ),
            SizedBox(height: 8.h),
            Expanded(
              child: ListView.builder(
                itemCount: routeList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return AvailableRiderScreen(
                            route: routeList[index].title,
                            routeText: routeList[index].text,
                          );
                        },
                      ));
                    },
                    child: Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFF1862C)),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 13.w, vertical: 10.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 12.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                routeList[index].title,
                                style: bodySmall2,
                              ),
                              Text(
                                routeList[index].text,
                                style: bodySmall3Grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<RouteModel> routeList = [
  RouteModel(title: 'Banani <-> NSU', text: 'Soinik Club Banani'),
  RouteModel(title: 'Uttara <-> NSU', text: 'Zam Zam Tower Uttara'),
  RouteModel(title: 'Dhanmondi <-> NSU', text: 'Dhanmondi 32'),
  RouteModel(title: 'Mohammadpur <-> NSU', text: 'Sia Moshjid Mohammadpur'),
  RouteModel(title: 'Mirpur <-> NSU', text: 'Mirpur 2 Bus Stand'),
  RouteModel(title: 'ECB <-> NSU', text: 'ECB Chattar'),
  RouteModel(title: 'Mohakhali <-> NSU', text: 'Brac University'),
  RouteModel(title: 'Kawran Bazar <-> NSU', text: 'Kawran Bazar Bus Stand'),
  RouteModel(title: 'Banasree <-> NSU', text: 'Maradia Bus Stop'),
  RouteModel(title: 'Badda <-> NSU', text: 'Notun Bazar Badda'),
];

class RouteModel {
  final String title;
  final String text;

  RouteModel({required this.title, required this.text});
}
