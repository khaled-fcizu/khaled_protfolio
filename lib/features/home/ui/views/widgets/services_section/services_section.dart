import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/data/models/service_model.dart';

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

// عنصر الخدمة (كارت)
class ServiceItem extends StatefulWidget {
  const ServiceItem({super.key, required this.serviceModel});
  final ServiceModel serviceModel;

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _isHovered
              ? Colors.blueAccent.withOpacity(0.15)
              : Colors.blueGrey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _isHovered ? Colors.blueAccent : Colors.transparent,
            width: 2,
          ),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(widget.serviceModel.icon, color: AppColors.primary, size: 40),
            const SizedBox(height: 20),
            Text(widget.serviceModel.title, style: TextStyles.font20WhiteBold),
            const SizedBox(height: 10),
            Text(
              widget.serviceModel.description,
              style: TextStyles.font16WhiteRegular.copyWith(
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
