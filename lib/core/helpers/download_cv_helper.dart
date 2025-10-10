import 'dart:html' as html;

void downloadCV() {
    final cvUrl = 'assets/assets/files/khaled_badr\'s_resume.pdf';
    html.AnchorElement(href: cvUrl)
      ..setAttribute('download', 'khaled_badr\'s_resume.pdf')
      ..click();

}
