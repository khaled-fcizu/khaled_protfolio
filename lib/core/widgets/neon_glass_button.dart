import 'dart:ui';

import 'package:flutter/material.dart';

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
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: widget.width ?? 200,
          height: widget.height ?? 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: _isHovering
                  ? [
                      Colors.blueAccent.withOpacity(0.4),
                      Colors.lightBlueAccent.withOpacity(0.3),
                    ]
                  : [
                      Colors.blueAccent.withOpacity(0.25),
                      Colors.lightBlueAccent.withOpacity(0.15),
                    ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(
              color: Colors.white.withOpacity(0.25),
              width: 1.5,
            ),
            // 🌟 الظل الخارجي (glow)
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withOpacity(_isHovering ? 0.7 : 0.4),
                blurRadius: _isHovering ? 25 : 12,
                spreadRadius: _isHovering ? 4 : 2,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            // 💧 البلور الداخلي
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
                    fontSize: _isHovering ? 19 : 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        color: Colors.blueAccent.withOpacity(_isHovering ? 0.8 : 0.4),
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
