import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/contact_section/contact_text_field.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

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
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  ContactTextField(nameController, "Your Name"),
                  SizedBox(height: 20.h),
                  ContactTextField(
                    emailController,
                    "Your Email",
                    keyboard: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20.h),
                  ContactTextField(
                    messageController,
                    "Your Message",
                    maxLines: 5,
                  ),
                  SizedBox(height: 40.h),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50.w,
                        vertical: 18.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),

                    child: Text(
                      "Send Message",
                      style: TextStyles.font16WhiteRegular.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

 

}
