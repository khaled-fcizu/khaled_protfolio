import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // العنوان
          Row(
            children: [
              Text('My ', style: TextStyles.font35PrimaryBold),
              Text('Services', style: TextStyles.font35WhiteBold),
            ],
          ),
          verticalSpace(50),

          // الجريد اللي فيها الخدمات
          GridView.builder(
            shrinkWrap: true, // مهم علشان الجريد تشتغل جوه Column
            physics: const NeverScrollableScrollPhysics(), // تمنع سكرول داخلية
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // عدد الأعمدة
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              childAspectRatio: 2.3, // تناسب العرض مع الارتفاع
            ),
            itemCount: ServiceModel.services.length,
            itemBuilder: (context, index) {
              return ServiceItem(serviceModel: ServiceModel.services[index]);
            },
          ),
        ],
      ),
    );
  }
}

