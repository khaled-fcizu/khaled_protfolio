import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1149.h,
      color: AppColors.backgroundSection2, // خلفية داكنة أكثر
      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Projects', style: TextStyles.font35PrimaryBold),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: List.generate(4, (index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/project${index + 1}.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
