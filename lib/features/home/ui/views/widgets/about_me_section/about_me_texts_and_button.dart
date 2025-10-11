import 'package:easy_localization/easy_localization.dart';
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
                "About".tr(),
                style: TextStyles.font35WhiteBold.copyWith(fontSize: 35.sp),
              ),
              Text(
                "Me".tr(),
                style: TextStyles.font35PrimaryBold.copyWith(fontSize: 35.sp),
              ),
            ],
          ),
          verticalSpace(isSmall ? 8.h : 10.h),
          Text(
            "Flutter Developer".tr(),
            style: TextStyles.font24WhiteRegular.copyWith(fontSize: 24.sp),
          ),
          verticalSpace(isSmall ? 25.h : 33.h),
          Text(
            "abuot_info".tr(),
            style: TextStyles.font20WhiteRegular.copyWith(
              fontSize: 20.sp,
              height: 1.5,
            ),
          ),
          verticalSpace(isSmall ? 35.h : 55.h),
          SizedBox(
            width: 180.w,
            height: isSmall ? 40.h : 55.h,
            child: NeonGlassButton(
              text: "See More".tr(),
              onPressed: () {
                final screenHeight = MediaQuery.of(context).size.height;
                scrollController.animateTo(
                  scrollController.offset + screenHeight,
                  duration: const Duration(milliseconds: 800),
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
