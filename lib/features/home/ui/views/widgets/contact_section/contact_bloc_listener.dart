
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khaled_protfolio/core/helpers/extentions.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/features/home/logic/cubit/contact_cubit.dart';

class ContactBlocListener extends StatelessWidget {
  const ContactBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactCubit, ContactState>(
      listener: (context, state) {
        if (state is ContactSuccess) {
          context.pop();
          context.read<ContactCubit>().clear();
         
         context.showSnackBar('Message Sent Successfully!✔');
        } else if (state is ContactFailure) {
          context.pop();
          context.showSnackBar(state.message);
        } else {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
