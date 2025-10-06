import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart' show verticalSpace, horizontalSpace;
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/core/widgets/neon_glass_button.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/social_icon.dart';

class TextsAndSocialAndButton extends StatelessWidget {
  const TextsAndSocialAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(175),
          Text("Hello it’s Me ", style: TextStyles.font32WhiteBold),
          verticalSpace(13),
          Text('Khaled Bahnawy', style: TextStyles.font64WhiteBold),
          verticalSpace(24),
          Row(
            children: [
              Text('And I’m a ', style: TextStyles.font32WhiteBold),
              horizontalSpace(12),
              Text(
                'Flutter Developer </>',
                style: TextStyles.font35PrimaryBold,
              ),
            ],
          ),
          verticalSpace(19),
          SizedBox(
            width: 750.w,
            child: Text(
              'capable of turning business ideas into scalable, high-quality apps using various architectures. I work effectively in teams, follow best practices, and continuously learn new technologies.',
              style: TextStyles.font20WhiteRegular.copyWith(
                color: Colors.grey[400],
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ),
          verticalSpace(34),
          // ايقونات التواصل
          Row(
            children: [
              SocialIcon(image: Assets.assetsSvgsLinkedInIcon, onTap: () {}),
              horizontalSpace(16),
              SocialIcon(image: Assets.assetsSvgsFacebookIcon, onTap: () {}),
              horizontalSpace(16),
              SocialIcon(image: Assets.assetsSvgsInstagramIcon, onTap: () {}),
              horizontalSpace(16),
              SocialIcon(image: Assets.assetsSvgsXIcon, onTap: () {}),
            ],
          ),
          verticalSpace(50),
          NeonGlassButton(text: 'Download CV', onPressed: () {}),
        ],
      ),
    );
  }
}