import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/widgets/restart_widget.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  State<LanguageDropdown> createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    // قياسات متناسقة حسب نوع الجهاز
    final double width = isMobile ? 140.w : 140.w;
    final double height = isMobile ? 40.h : 55.h;
    final double fontSize = isMobile ? 20.sp : 16.sp;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        width: width,
        height: height,
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
              color: Colors.blueAccent.withOpacity(_isHovering ? 0.7 : 0.3),
              blurRadius: _isHovering ? 20 : 10,
              spreadRadius: _isHovering ? 2 : 1,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Locale>(
                dropdownColor: Colors.black87.withOpacity(0.8),
                value: context.locale,
                icon: Icon(Icons.language, color: Colors.white, size: 28.sp),
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                borderRadius: BorderRadius.circular(14.r),
                onChanged: (locale) async {
                  if (locale == null) return;
                  await context.setLocale(locale);
                  RestartWidget.restartApp(context);
                },
                items: const [
                  DropdownMenuItem(
                    value: Locale('en'),
                    child: Text(
                      'English',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DropdownMenuItem(
                    value: Locale('ar'),
                    child: Text(
                      'العربية',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
