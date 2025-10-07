import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SocialIcon extends StatefulWidget {
  const SocialIcon({
    super.key,
    required this.onTap,
    required this.image,
  });

  final Function()? onTap;
  final String image;

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0, _isHovered ? -4 : 0, 0),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: AnimatedScale(
              scale: _isHovered ? 1.2 : 1.0, // تكبير بسيط وقت الـ hover
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              child: ColorFiltered(
                colorFilter: _isHovered
                    ? const ColorFilter.mode(
                        Colors.blueAccent, BlendMode.srcIn) // لون خفيف عند hover
                    : const ColorFilter.mode(
                        Colors.white, BlendMode.srcIn),
                child: SvgPicture.asset(widget.image, width: 30, height: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
