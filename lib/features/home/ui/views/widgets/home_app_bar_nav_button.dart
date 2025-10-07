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
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0, _isHovered ? -5 : 0, 0),
        child: InkWell(
          onTap: widget.onTap,
          hoverColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: _isHovered
                  ? TextStyles.font20WhiteBold.copyWith(
                      color: Colors.blueAccent, // اللون وقت الـ hover
                    )
                  : TextStyles.font20WhiteBold,
              child: Text(widget.title),
            ),
          ),
        ),
      ),
    );
  }
}
