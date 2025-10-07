import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

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
      child: ClipOval(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 250.r * scale,
              backgroundColor: Colors.blueGrey.withOpacity(0.1),
            ),
            Image.asset(
              Assets.assetsImagesMyPhoto,
              width: 500.r * scale,
              height: 500.r * scale,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
