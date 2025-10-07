import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/core/widgets/neon_glass_button.dart';

class AboutMeTextsAndButton extends StatelessWidget {
  const AboutMeTextsAndButton({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('About ', style: TextStyles.font35WhiteBold),
              Text('Me', style: TextStyles.font35PrimaryBold),
            ],
          ),
          verticalSpace(10),
          Text('Flutter Developer', style: TextStyles.font24WhiteRegular),
          verticalSpace(33),
          Text(
            'I am a Flutter Developer passionate about creating modern, high-quality mobile and web apps. I focus on clean code, scalability, and performance.',
            style: TextStyles.font20WhiteRegular,
          ),
          verticalSpace(55),
          NeonGlassButton(
            text: 'See More',
            onPressed: () {
              final screenHeight = MediaQuery.of(context).size.height;

              scrollController.animateTo(
                scrollController.offset + screenHeight, // الصفحة التالية
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              );
            },
          ),
        ],
      ),
    );
  }
}
