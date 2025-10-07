import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/data/models/project_model.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/project_section/project_item.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundSection2,
      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('My ', style: TextStyles.font35WhiteBold),
              Text('Projects', style: TextStyles.font35PrimaryBold),
            ],
          ),
          const SizedBox(height: 30),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ProjectModel.projects.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // صفين
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              childAspectRatio: 2, // نسبة العرض للطول
            ),
            itemBuilder: (context, index) {
              return ProjectItem(project: ProjectModel.projects[index]);
            },
          ),
        ],
      ),
    );
  }
}
