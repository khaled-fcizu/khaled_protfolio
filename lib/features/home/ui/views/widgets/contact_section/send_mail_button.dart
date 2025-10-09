import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';

class SendMailButton extends StatelessWidget {
  const SendMailButton({super.key, required this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 25.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),

      child: Text(
        "Send Message",
        style: TextStyles.font16WhiteRegular.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
