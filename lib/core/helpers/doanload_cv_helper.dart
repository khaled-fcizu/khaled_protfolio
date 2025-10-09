import 'dart:html' as html;

void downloadCV() {
    final cvUrl = 'assets/files/khaled badr\'s resume.pdf';
    html.AnchorElement(href: cvUrl)
      ..setAttribute('download', 'khaled badr\'s resume.pdf')
      ..click();

}
