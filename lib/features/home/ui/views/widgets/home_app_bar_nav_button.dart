import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';

class HomeAppBarNavButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const HomeAppBarNavButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text(title, style: TextStyles.font20WhiteBold),
      ),
    );
  }
}
