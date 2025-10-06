import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/home_app_bar_nav_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

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
              HomeAppBarNavButton(title: 'Home', onTap: () {}),
              HomeAppBarNavButton(title: 'About', onTap: () {}),
              HomeAppBarNavButton(title: 'Service', onTap: () {}),
              HomeAppBarNavButton(title: 'Projects', onTap: () {}),
              HomeAppBarNavButton(title: 'Contact', onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
