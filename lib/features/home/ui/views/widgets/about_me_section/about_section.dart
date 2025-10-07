import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/about_me_section/about_me_image.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/about_me_section/about_me_texts_and_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.scrollController});
  final ScrollController scrollController ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      key: key,
      color: AppColors.backgroundSection2, // خلفية مختلفة
      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [AboutMeImage(), AboutMeTextsAndButton(scrollController: scrollController)],
      ),
    );
  }
}
