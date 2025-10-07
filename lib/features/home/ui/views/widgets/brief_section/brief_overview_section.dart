import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/home_image.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/texts_and_social_and_button.dart';

class BriefOverviewSection extends StatelessWidget {
  const BriefOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    // تحديد حجم الشاشة الحالي
    final screenWidth = ScreenUtil().screenWidth;

    // مقياس للتصغير (كل ما تصغر الشاشة يصغر كل العناصر بشكل متناسق)
    final scale = screenWidth < 900
        ? 0.7
        : screenWidth < 600
        ? 0.55
        : 1.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.w * scale),
      child: Transform.scale(
        scale: scale,
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(child: TextsAndSocialAndButton()),
                SizedBox(width: 60),
                HomeImage(),
              ],
            ),
            verticalSpace(100 * scale),
          ],
        ),
      ),
    );
  }
}
