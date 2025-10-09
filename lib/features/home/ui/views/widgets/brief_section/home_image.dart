import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80.h),
      child: ClipOval(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 250.r,
              backgroundColor: Colors.blueGrey.withOpacity(0.1),
            ),
            Image.asset(
              Assets.assetsImagesMyPhoto,
              width: 500.r,
              height: 500.r,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
