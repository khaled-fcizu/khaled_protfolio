import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NeonGlassButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const NeonGlassButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<NeonGlassButton> createState() => _NeonGlassButtonState();
}

class _NeonGlassButtonState extends State<NeonGlassButton> {
  bool _isHovering = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    // قياسات متناسقة حسب نوع الجهاز
    final double width = isMobile ? 150.w : 180.w;
    final double height = isMobile ? 40.h : 65.h;
    final double fontSize = isMobile ? 15.sp : 15.sp;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) {
          setState(() => _isPressed = false);
          widget.onPressed();
        },
        onTapCancel: () => setState(() => _isPressed = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            gradient: LinearGradient(
              colors: _isHovering
                  ? [
                      Colors.blueAccent.withOpacity(0.5),
                      Colors.lightBlueAccent.withOpacity(0.3),
                    ]
                  : [
                      Colors.blueAccent.withOpacity(0.2),
                      Colors.lightBlueAccent.withOpacity(0.1),
                    ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(color: Colors.white.withOpacity(0.25), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withOpacity(_isHovering ? 0.7 : 0.35),
                blurRadius: _isHovering ? 20 : 10,
                spreadRadius: _isHovering ? 2 : 1,
              ),
            ],
          ),
          transform: Matrix4.identity()
            ..scale(_isPressed ? 0.96 : 1.0)
            ..translate(0.0, _isHovering ? -2 : 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Center(
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.1,
                    shadows: [
                      Shadow(
                        color: Colors.blueAccent.withOpacity(
                          _isHovering ? 0.9 : 0.5,
                        ),
                        blurRadius: _isHovering ? 20 : 10,
                      ),
                    ],
                  ),
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
