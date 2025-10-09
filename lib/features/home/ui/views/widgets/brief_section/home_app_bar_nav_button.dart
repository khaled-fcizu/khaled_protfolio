import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/theming/text_styles.dart';

class HomeAppBarNavButton extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const HomeAppBarNavButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  State<HomeAppBarNavButton> createState() => _HomeAppBarNavButtonState();
}

class _HomeAppBarNavButtonState extends State<HomeAppBarNavButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final width = ScreenUtil().screenWidth;

    double fontSize = width < 600
        ? 22
              .sp // 🔹 أكبر من الأول (12)
        : width < 1000
        ? 24.sp
        : 24.sp;

    double horizontalPadding = width < 600
        ? 6.w
        : width < 1000
        ? 8.w
        : 10.w;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        transform: Matrix4.identity()
          ..translate(0, _isHovered ? -3 : 0)
          ..scale(_isHovered ? 1.08 : 1.0),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              style: TextStyles.font20WhiteBold.copyWith(
                fontSize: fontSize,
                color: _isHovered ? Colors.blueAccent : Colors.white,
                letterSpacing: width < 600 ? 0.8 : 1.2,
                shadows: _isHovered
                    ? [
                        Shadow(
                          color: Colors.blueAccent.withOpacity(0.6),
                          blurRadius: 10,
                        ),
                      ]
                    : [],
              ),
              child: Text(widget.title),
            ),
          ),
        ),
      ),
    );
  }
}
