import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key,required this.onTap, required this.image});
 final Function()? onTap;
 final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: 
      Padding(
        padding: const EdgeInsets.all(10),
        child: SvgPicture.asset(image),
      ),
    );
  }
}