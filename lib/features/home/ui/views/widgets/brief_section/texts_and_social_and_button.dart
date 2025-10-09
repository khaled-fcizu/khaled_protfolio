import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';
import 'package:khaled_protfolio/core/helpers/doanload_cv_helper.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';
import 'package:khaled_protfolio/core/widgets/neon_glass_button.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/social_icon.dart';

class TextsAndSocialAndButton extends StatelessWidget {
  const TextsAndSocialAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;
    final scale = screenWidth < 900
        ? 0.8
        : screenWidth < 600
            ? 0.65
            : 1.0;

    return Padding(
      padding: EdgeInsets.only(top: 80.h * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello it’s Me ",
              style: TextStyles.font32WhiteBold.copyWith(fontSize: 32.sp * scale)),
          verticalSpace(10 * scale),
          Text('Khaled Bahnawy',
              style: TextStyles.font64WhiteBold.copyWith(fontSize: 60.sp * scale)),
          verticalSpace(18 * scale),
          Row(
            children: [
              Text('And I’m a ',
                  style: TextStyles.font32WhiteBold.copyWith(fontSize: 28.sp * scale)),
              SizedBox(width: 10.w * scale),
              Text(
                'Flutter Developer </>',
                style: TextStyles.font35PrimaryBold.copyWith(fontSize: 30.sp * scale),
              ),
            ],
          ),
          verticalSpace(20 * scale),
          SizedBox(
            width: 700.w * scale,
            child: Text(
              'Capable of turning business ideas into scalable, high-quality apps using various architectures. I work effectively in teams, follow best practices, and continuously learn new technologies.',
              style: TextStyles.font20WhiteRegular.copyWith(
                fontSize: 18.sp * scale,
                color: Colors.grey[400],
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ),
          verticalSpace(30 * scale),
          Row(
            children: [
              SocialIcon(image: Assets.assetsSvgsLinkedInIcon, url: 'https://www.linkedin.com/in/khaled-badr-0325972a1'),
              SizedBox(width: 16.w * scale),
              SocialIcon(image: Assets.assetsSvgsFacebookIcon, url: 'https://www.facebook.com/share/19osTfx2JM/'),
              SizedBox(width: 16.w * scale),
              SocialIcon(image: Assets.assetsSvgsWhatsappIcon, url: 'https://wa.me/201210147948'),
              SizedBox(width: 16.w * scale),
              SocialIcon(image: Assets.assetsSvgsGithubIcon, url: 'https://github.com/khaled-fcizu'),
            ],
          ),
          verticalSpace(40 * scale),
          Transform.scale(
            scale: scale,
            alignment: Alignment.centerLeft,
            child: NeonGlassButton(text: 'Download CV', onPressed: downloadCV),
          ),
        ],
      ),
    );
  }
}
