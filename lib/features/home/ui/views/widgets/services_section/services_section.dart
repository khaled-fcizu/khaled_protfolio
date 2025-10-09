import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/data/models/service_model.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/services_section/service_item.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundSection1, // خلفية مختلفة لكل سكشن
      padding: EdgeInsets.symmetric(vertical: 150.h, horizontal: 100.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // العنوان
          Row(
            children: [
              Text(
                'My ',
                style: TextStyles.font35PrimaryBold.copyWith(fontSize: 35.sp),
              ),
              Text(
                'Services',
                style: TextStyles.font35WhiteBold.copyWith(fontSize: 35.sp),
              ),
            ],
          ),
          verticalSpace(50),

          // الجريد اللي فيها الخدمات
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // ثابت
              mainAxisSpacing: 30.h,
              crossAxisSpacing: 30.w,
              childAspectRatio: 2.3, // نفس النسبة اللي مصمم بيها
            ),
            itemCount: ServiceModel.services.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: ServiceItem(serviceModel: ServiceModel.services[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
