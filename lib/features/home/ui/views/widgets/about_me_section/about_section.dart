import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/about_me_section/about_me_image.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/about_me_section/about_me_texts_and_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final isSmall = ScreenUtil().screenWidth < 900;

    return Container(
      width: double.infinity,
      color: AppColors.backgroundSection2,
      padding: EdgeInsets.symmetric(
        vertical: isSmall ? 80.h : 150.h,
        horizontal: isSmall ? 40.w : 100.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: AboutMeImage(isSmall: isSmall),
          ),
          SizedBox(width: isSmall ? 40.w : 80.w),
          Expanded(
            flex: 1,
            child: AboutMeTextsAndButton(
              scrollController: scrollController,
              isSmall: isSmall,
            ),
          ),
        ],
      ),
    );
  }
}
