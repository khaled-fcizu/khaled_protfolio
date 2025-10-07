import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';

class AboutMeImage extends StatelessWidget {
  final bool isSmall;
  const AboutMeImage({super.key, required this.isSmall});

  @override
  Widget build(BuildContext context) {
    final double radius = isSmall ? 120.r : 200.r;

    return Center(
      child: Container(
        width: radius * 2,
        height: radius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black38,
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesMyPhoto),
            fit: BoxFit.cover, // تضمن أن الصورة تملى الدائرة بدون خروج
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 15, spreadRadius: 3),
          ],
        ),
      ),
    );
  }
}
