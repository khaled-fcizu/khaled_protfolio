import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/home_image.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/texts_and_social_and_button.dart';

class BriefOverviewSection extends StatelessWidget {
  const BriefOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // النصوص التعريفية
              TextsAndSocialAndButton(),
              // صورة جانبية (هنضيفها بعدين)
              HomeImage(),
            ],
          ),
          verticalSpace(202)
        ],
      ),
    );
  }
}



