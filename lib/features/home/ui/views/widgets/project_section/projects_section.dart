import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
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
      padding: EdgeInsets.symmetric(vertical: 150.h, horizontal: 100.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "My Projects 1".tr(),
                style: TextStyles.font35WhiteBold.copyWith(fontSize: 35.sp),
              ),
              Text(
                "My Projects 2".tr(),
                style: TextStyles.font35PrimaryBold.copyWith(fontSize: 35.sp),
              ),
              Spacer(),
              Text(
                "hint".tr(),
                style: TextStyles.font14GrayRegular.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
          verticalSpace(50),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ProjectModel.projects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30.w,
              mainAxisSpacing: 30.h,
              childAspectRatio: 2 / 1.5,
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
