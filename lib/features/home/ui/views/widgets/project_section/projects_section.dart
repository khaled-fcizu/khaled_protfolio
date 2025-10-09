import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding:  EdgeInsets.symmetric(vertical: 150.h, horizontal: 100.w),
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
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: ScreenUtil().screenWidth < 700
        ? 1
        : 2, // موبايل = عمود واحد، غير كده = عمودين
    crossAxisSpacing: 25.w,
    mainAxisSpacing: 25.h,
    childAspectRatio: ScreenUtil().screenWidth < 700
        ? 1.6 // لما الشاشة صغيرة خليه أطول شوية علشان العناصر تبان
        : 2,   // العرض الطبيعي على الشاشات الكبيرة
  ),
  itemBuilder: (context, index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: ProjectItem(project: ProjectModel.projects[index]),
    );
  },
)

        ],
      ),
    );
  }
}
