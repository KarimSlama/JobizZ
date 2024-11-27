import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobizz/core/helpers/constants.dart';
import 'package:jobizz/jobizz/screens/on_boarding/model/boarding_model.dart';
import 'package:jobizz/jobizz/screens/on_boarding/widget/on_boarding_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500.h,
      child: PageView.builder(
        onPageChanged: (value) {},
        controller: Constants.pageController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            OnBoardingItems(boardingModel: boarding[index]),
        itemCount: boarding.length,
      ),
    );
  }
}
