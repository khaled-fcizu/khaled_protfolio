import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/data/models/service_model.dart';

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
    // 🧩 نحدد إذا كانت الشاشة صغيرة أو لا
    final isSmallScreen = ScreenUtil().screenWidth < 700;

    // 🧩 نضبط أحجام ديناميكية بناءً على حجم الشاشة
    final iconSize = isSmallScreen ? 45.sp : 40.sp;
    final titleSize = isSmallScreen ? 20.sp : 18.sp;
    final descSize = isSmallScreen ? 15.sp : 14.sp;
    final paddingValue = isSmallScreen ? 28.w : 24.w;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: EdgeInsets.symmetric(
          horizontal: paddingValue,
          vertical: paddingValue,
        ),
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: _isHovered ? Colors.blueAccent : Colors.transparent,
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.topLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 250.w,
              maxWidth: isSmallScreen
                  ? 500.w
                  : 450.w, // أكبر شوية في الشاشات الصغيرة
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  widget.serviceModel.icon,
                  color: AppColors.primary,
                  size: iconSize,
                ),
                verticalSpace(20),
                Text(
                  widget.serviceModel.title.tr(),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font20WhiteBold.copyWith(
                    fontSize: titleSize,
                  ),
                ),
                verticalSpace(10),
                Text(
                  widget.serviceModel.description.tr(),
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font16WhiteRegular.copyWith(
                    fontSize: descSize,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
