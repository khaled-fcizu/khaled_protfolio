import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/constants/assets.dart';

void downloadCV() {
  if (kIsWeb) {
    final cvUrl = 'assets/files/khaled badr\'s resume.pdf';
    final anchor = html.AnchorElement(href: cvUrl)
      ..setAttribute('download', 'khaled badr\'s resume.pdf')
      ..click();
  } else {
    // لو حبيت تضيف دعم للموبايل لاحقًا
  }
}
