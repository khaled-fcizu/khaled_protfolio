import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/core/widgets/neon_glass_button.dart';

class AboutMeTextsAndButton extends StatelessWidget {
  final ScrollController scrollController;
  final bool isSmall;
  const AboutMeTextsAndButton({
    super.key,
    required this.scrollController,
    required this.isSmall,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isSmall ? 300.w : 500.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'About ',
                style: TextStyles.font35WhiteBold.copyWith(
                  fontSize: isSmall ? 22.sp : 35.sp,
                ),
              ),
              Text(
                'Me',
                style: TextStyles.font35PrimaryBold.copyWith(
                  fontSize: isSmall ? 22.sp : 35.sp,
                ),
              ),
            ],
          ),
          verticalSpace(isSmall ? 8.h : 10.h),
          Text(
            'Flutter Developer',
            style: TextStyles.font24WhiteRegular.copyWith(
              fontSize: isSmall ? 16.sp : 24.sp,
            ),
          ),
          verticalSpace(isSmall ? 25.h : 33.h),
          Text(
            'I am a Flutter Developer passionate about creating modern, high-quality mobile and web apps. I focus on clean code, scalability, and performance.',
            style: TextStyles.font20WhiteRegular.copyWith(
              fontSize: isSmall ? 14.sp : 20.sp,
              height: 1.5,
            ),
          ),
          verticalSpace(isSmall ? 35.h : 55.h),
          SizedBox(
            width: isSmall ? 130.w : 180.w,
            height: isSmall ? 40.h : 55.h,
            child: NeonGlassButton(
              text: 'See More',
              onPressed: () {
                final screenHeight = MediaQuery.of(context).size.height;
                scrollController.animateTo(
                  scrollController.offset + screenHeight,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
