
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(81),

        ClipOval(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 275.r,
                backgroundColor: Colors.blueGrey.withOpacity(0.1),
              ),

              Image.asset(
                Assets.assetsImagesMyPhoto,
                width: 550.r,
                height: 550.r,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
