import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';

class AboutMeImage extends StatelessWidget {
  const AboutMeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.w,
        height: 400.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black38,
          image: DecorationImage(image: AssetImage(Assets.assetsImagesMyPhoto)),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 15, spreadRadius: 3),
          ],
        ),
      ),
    );
  }
}
