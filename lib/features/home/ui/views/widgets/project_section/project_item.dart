import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/url_lancher_helper.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/data/models/project_model.dart';

class ProjectItem extends StatefulWidget {
  final ProjectModel project;
  const ProjectItem({super.key, required this.project});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openUrl(widget.project.link),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          //curve: Curves.easeInOut,
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: _isHovered ? AppColors.primary : Colors.transparent,
              width: 2.w,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // اللوجو داخل إطار موحد الشكل
              Container(
                width: 80.w,
                height: 80.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                  border: Border.all(
                    color: _isHovered ? AppColors.primary : Colors.white24,
                    width: 1.2.w,
                  ),
                ),
                padding: EdgeInsets.all(10.w),
                child: ClipOval(
                  child: Image.asset(widget.project.logo, fit: BoxFit.contain),
                ),
              ),

              SizedBox(height: 30.h),

              // اسم المشروع
              Text(
                widget.project.name.tr(),
                style: TextStyles.font18PrimaryBold.copyWith(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),

              SizedBox(height: 15.h),

              // وصف بسيط للمشروع
              Text(
                widget.project.description.tr(),
                style: TextStyles.font14GrayRegular.copyWith(
                  fontSize: 14.sp,
                  color: Colors.white70,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 4,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
