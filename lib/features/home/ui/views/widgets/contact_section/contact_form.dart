import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/helpers/app_regix.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/features/home/logic/cubit/contact_cubit.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/contact_section/contact_text_field.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/contact_section/send_mail_button.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ContactCubit>().formKey,
      autovalidateMode: context.read<ContactCubit>().autovalidateMode,
      child: Column(
        children: [
          ContactTextField(
            context.read<ContactCubit>().nameController,
            "Your Name",
          ),
          verticalSpace(20),
          ContactTextField(
            context.read<ContactCubit>().emailController,
            "Your Email",
            keyboard: TextInputType.emailAddress,
            validator: (value) {
              if (value == "" || value == null) {
                return "Field can't be empty";
              } else if (!AppRegex.isEmailValid(value)) {
                return "Enter a valid email";
              }
              return null;
            },
          ),
          verticalSpace(20),
          ContactTextField(
            context.read<ContactCubit>().messageController,
            "Your Message",
            maxLines: 5,
          ),
          verticalSpace(40),
          SendMailButton(
            onPressed: () {
              setUpTriggerCubitAndAutoValidateMode(context);
            },
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  void setUpTriggerCubitAndAutoValidateMode(BuildContext context) {
    if (context
        .read<ContactCubit>()
        .formKey
        .currentState!
        .validate()) {
       context.read<ContactCubit>().autovalidateMode = AutovalidateMode.disabled;
       setState(() {
         
       });
      context.read<ContactCubit>().sendMessage();
    } else {
      context.read<ContactCubit>().autovalidateMode =
          AutovalidateMode.always;
      setState(() {});
    }
  }
}
