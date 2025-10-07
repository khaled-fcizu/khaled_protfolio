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

    // 🔹 Responsive adjustments
    double horizontalPadding = width < 600
        ? 25.w // زودنا المسافة الجانبية
        : width < 1000
            ? 60.w
            : 100.w;

    double verticalPadding = width < 600
        ? 18.h // زودنا ارتفاع البار
        : 15.h;

    double logoFontSize = width < 600
        ? 28.sp // كبرنا اللوجو
        : width < 1000
            ? 32.sp
            : 35.sp;

    double spacing = width < 600
        ? 10.w // زودنا المسافة بين الأزرار
        : width < 1000
            ? 14.w
            : 20.w;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 🔹 Logo
          Text(
            'K B',
            style: TextStyles.font35WhiteBold.copyWith(
              fontSize: logoFontSize,
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
