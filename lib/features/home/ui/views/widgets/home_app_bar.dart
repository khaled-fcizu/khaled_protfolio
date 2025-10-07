import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/home_app_bar_nav_button.dart';

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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('K B', style: TextStyles.font35WhiteBold),
          Row(
            children: [
              HomeAppBarNavButton(title: 'Home', onTap: onHomeTap),
              HomeAppBarNavButton(title: 'About', onTap: onAboutTap),
              HomeAppBarNavButton(title: 'Service', onTap: onServiceTap),
              HomeAppBarNavButton(title: 'Projects', onTap: onProjectsTap),
              HomeAppBarNavButton(title: 'Contact', onTap: onContactTap),
            ],
          ),
        ],
      ),
    );
  }
}
