import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeonGlassButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  const NeonGlassButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  State<NeonGlassButton> createState() => _NeonGlassButtonState();
}

class _NeonGlassButtonState extends State<NeonGlassButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    // نحدد إذا كانت الشاشة صغيرة
    final isSmall = MediaQuery.of(context).size.width < 700;

    final double buttonWidth = widget.width ?? (isSmall ? 160.w : 220.w);
    final double buttonHeight = widget.height ?? (isSmall ? 60.h : 80.h);
    final double fontSize = isSmall ? 14.sp : 18.sp;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: buttonWidth,
          height: buttonHeight,
          transform: Matrix4.translationValues(0, _isHovering ? -4 : 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.r),
            gradient: LinearGradient(
              colors: _isHovering
                  ? [
                      Colors.blueAccent.withOpacity(0.5),
                      Colors.lightBlueAccent.withOpacity(0.4),
                    ]
                  : [
                      Colors.blueAccent.withOpacity(0.25),
                      Colors.lightBlueAccent.withOpacity(0.15),
                    ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(
              color: Colors.white.withOpacity(0.3),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withOpacity(_isHovering ? 0.8 : 0.4),
                blurRadius: _isHovering ? 25 : 15,
                spreadRadius: _isHovering ? 3 : 1,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: _isHovering ? 20 : 10,
                sigmaY: _isHovering ? 20 : 10,
              ),
              child: Center(
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 250),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: _isHovering ? fontSize + 1.5 : fontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        color: Colors.blueAccent.withOpacity(
                          _isHovering ? 0.8 : 0.5,
                        ),
                        blurRadius: _isHovering ? 20 : 10,
                      ),
                    ],
                  ),
                  child: Text(widget.text),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
