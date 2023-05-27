import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gontobbo/constants/gontobbo_typography.dart';

import '../../common_widgets/app_button_widget.dart';
import '../../constants/onboard_text_keys.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  final List<OnboardingModel> _onboardingModelList = [
    OnboardingModel('assets/pngs/onboard_1.png',
        OnBoardTextKeys.onboardingTitle1, OnBoardTextKeys.onboardingText1),
    OnboardingModel('assets/pngs/onboard_2.png',
        OnBoardTextKeys.onboardingTitle2, OnBoardTextKeys.onboardingText2),
    OnboardingModel('assets/pngs/onboard_3.png',
        OnBoardTextKeys.onboardinTitle3, OnBoardTextKeys.onboardingText3),
  ];

  final CarouselController controllerCarouselSlider = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  CarouselSlider(
            carouselController: controllerCarouselSlider,
            options: CarouselOptions(
              viewportFraction: 1.0,
              initialPage: 0,
              height: 1.sh,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, _) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: _onboardingModelList.map((onboardingModel) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(children: [
                    SizedBox(height: 40.h),
                    _logoWidget(onboardingModel),
                    SizedBox(height: 20.0.h),
                    _titleWidget(onboardingModel),
                    SizedBox(height: 24.0.h),
                    _textWidget(onboardingModel),
                    SizedBox(height: 40.0.h),
                    _dotsWidget(context),
                    SizedBox(height: 20.0.h),
                  ]);
                },
              );
            }).toList(),
          ),

        bottomNavigationBar: _buildBottomButton(context),
      ),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8.h,
        right: 24.w,
        left: 24.w,
      ),
      child: AppButtonWidget(
        height: 40.h,
        width: 380.w,
        buttonText: _currentIndex == _onboardingModelList.length - 1
            ? OnBoardTextKeys.getStarted
            : OnBoardTextKeys.next.tr,
        onPressed: _currentIndex < _onboardingModelList.length - 1
            ? () {
                controllerCarouselSlider.nextPage();
              }
            : () {},
      ),
    );
  }

  Padding _textWidget(OnboardingModel onboardingModel) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: SizedBox(
        height: 30.h,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              onboardingModel.text.tr,
              textAlign: TextAlign.center,
              style: bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _dotsWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _onboardingModelList.length,
        (index) => buildDotWidget(index, context),
      ),
    );
  }

  Padding _titleWidget(OnboardingModel onboardingModel) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Text(
        onboardingModel.title.tr,
        textAlign: TextAlign.center,
        style: h1BoldPrimary,
      ),
    );
  }

  Widget _logoWidget(OnboardingModel onboardingModel) {
    return Image.asset(
      onboardingModel.image,
      height: 287.h,
      width: 464.w,
    );
  }

  Widget buildDotWidget(int index, BuildContext context) {
    return Container(
      height: 10.h,
      width: _currentIndex == index ? 25.w : 10.w,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: _currentIndex == index
            ? const Color(0xFFF1862C)
            : Colors.grey.shade300,
      ),
    );
  }
}

class OnboardingModel {
  String image, title, text;

  OnboardingModel(this.image, this.title, this.text);
}
