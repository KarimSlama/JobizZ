import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/helpers/constants.dart';
import 'package:jobizz/core/theming/app_colors/app_colors.dart';
import 'package:jobizz/core/theming/app_strings/app_string.dart';
import 'package:jobizz/jobizz/screens/on_boarding/model/boarding_model.dart';
import 'package:jobizz/jobizz/screens/on_boarding/widget/on_boarding_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLast = false;
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset('assets/images/circle.svg'),
          const OnBoardingPageView(),
          SmoothPageIndicator(
            controller: Constants.pageController,
            count: boarding.length,
            effect: const ExpandingDotsEffect(
                dotWidth: 12.0,
                dotHeight: 12.0,
                spacing: 5.0,
                expansionFactor: 3.0,
                dotColor: AppColors.silver,
                activeDotColor: AppColors.darkGreyBlue),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 30),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    
                  },
                  child: Text(
                    AppString.skip,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.grey, fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 150.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.lightGreyBlue,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppString.next,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
