import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';

class AboutMeImage extends StatelessWidget {
  const AboutMeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(radius: 200.r, backgroundColor: Colors.black38),

          Image.asset(
            Assets.assetsImagesMyPhoto,
            width: 400.r,
            height: 400.r,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
