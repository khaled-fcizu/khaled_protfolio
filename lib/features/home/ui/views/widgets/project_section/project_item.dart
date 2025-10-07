import 'package:flutter/material.dart';
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
          curve: Curves.easeInOut,
      
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _isHovered ? AppColors.primary : Colors.transparent,
              width: 1.5,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // اللوجو داخل إطار موحد الشكل
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // دائرة متناسقة
                  color: Colors.white.withOpacity(0.1),
                  border: Border.all(
                    color: _isHovered ? AppColors.primary : Colors.white24,
                    width: 1.2,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: ClipOval(
                  child: Image.asset(widget.project.logo, fit: BoxFit.contain),
                ),
              ),
      
              const SizedBox(height: 15),
      
              // اسم المشروع
              Text(
                widget.project.name,
                style: TextStyles.font18PrimaryBold.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
      
              const SizedBox(height: 8),
      
              // وصف بسيط للمشروع
              Text(
                widget.project.description,
                style: TextStyles.font14GrayRegular.copyWith(
                  color: Colors.white70,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
