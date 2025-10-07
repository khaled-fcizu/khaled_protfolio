import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/about_me_section/about_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/brief_overview_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/contact_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/home_app_bar.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/projects_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/services_section/services_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2226),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            verticalSpace(53),
            HomeAppBar(
              onHomeTap: () => _scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeInOutCubic,
              ),
              onAboutTap: () => scrollToSection(aboutKey),
              onServiceTap: () => scrollToSection(servicesKey),
              onProjectsTap: () => scrollToSection(projectsKey),
              onContactTap: () => scrollToSection(contactKey),
            ),
            // 🏠 Home Section
            const BriefOverviewSection(),

            // 🧑‍💼 About Section
            AboutSection(key: aboutKey),

            // 🧰 Services Section
            ServicesSection(key: servicesKey),

            // 💻 Projects Section
            ProjectsSection(key: projectsKey),

            // 📬 Contact Section
            ContactSection(key: contactKey),
          ],
        ),
      ),
    );
  }
}
