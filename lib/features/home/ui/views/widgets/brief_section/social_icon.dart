import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:khaled_protfolio/core/helpers/url_lancher_helper.dart';

/// ==========================
/// 🔹 Social Icon
/// ==========================
class SocialIcon extends StatefulWidget {
  final String url;
  final String image;

  const SocialIcon({
    super.key,
    required this.url,
    required this.image,
  });

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double iconSize = (width < 600)
        ? 20
        : (width < 900)
            ? 25
            : 30;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0, _isHovered ? -4 : 0, 0),
        child: GestureDetector(
          onTap: () => openUrl(widget.url),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedScale(
              scale: _isHovered ? 1.2 : 1.0,
              duration: const Duration(milliseconds: 200),
              child: ColorFiltered(
                colorFilter: _isHovered
                    ? const ColorFilter.mode(
                        Colors.blueAccent, BlendMode.srcIn)
                    : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                child: SvgPicture.asset(
                  widget.image,
                  width: iconSize,
                  height: iconSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

