import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/home_app_bar_nav_button.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onServiceTap;
  final VoidCallback onProjectsTap;
  final VoidCallback onContactTap;

  const HomeAppBar({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onServiceTap,
    required this.onProjectsTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    final width = ScreenUtil().screenWidth;

    double spacing = width < 600
        ? 10.w // زودنا المسافة بين الأزرار
        : width < 1000
            ? 14.w
            : 20.w;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 🔹 Logo
          Text(
            'K B',
            style: TextStyles.font35WhiteBold.copyWith(
              fontSize: 35.sp,
              letterSpacing: 2,
            ),
          ),

          // 🔹 Navigation Buttons
          Row(
            children: [
              HomeAppBarNavButton(title: 'Home', onTap: onHomeTap),
              SizedBox(width: spacing),
              HomeAppBarNavButton(title: 'About', onTap: onAboutTap),
              SizedBox(width: spacing),
              HomeAppBarNavButton(title: 'Service', onTap: onServiceTap),
              SizedBox(width: spacing),
              HomeAppBarNavButton(title: 'Projects', onTap: onProjectsTap),
              SizedBox(width: spacing),
              HomeAppBarNavButton(title: 'Contact', onTap: onContactTap),
            ],
          ),
        ],
      ),
    );
  }
}
