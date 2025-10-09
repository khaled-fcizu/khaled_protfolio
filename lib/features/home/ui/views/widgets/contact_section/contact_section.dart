import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/contact_section/contact_bloc_listener.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/contact_section/contact_form.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 80.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Let’s Work Together",
            style: TextStyles.font35WhiteBold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40.h),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700.w),
            child: ContactForm(),
          ),
          ContactBlocListener(),
        ],
      ),
    );
  }
}




