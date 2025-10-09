import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/services/set_up_get_it_service.dart';
import 'package:khaled_protfolio/features/home/data/repos/contact_repo.dart';
import 'package:khaled_protfolio/features/home/logic/cubit/contact_cubit.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/about_me_section/about_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/brief_overview_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/contact_section/contact_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_section/home_app_bar.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/project_section/projects_section.dart';
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
            SizedBox(height: 53.h),
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
            SizedBox(height: 40.h),

            // 🏠 Home Section
            const BriefOverviewSection(),
            SizedBox(height: 80.h),

            // 🧑‍💼 About Section
            AboutSection(key: aboutKey, scrollController: _scrollController),
            SizedBox(height: 100.h),

            // 🧰 Services Section
            ServicesSection(key: servicesKey),
            SizedBox(height: 100.h),

            // 💻 Projects Section
            ProjectsSection(key: projectsKey),
            SizedBox(height: 100.h),

            // 📬 Contact Section
            BlocProvider(
              create: (context) => ContactCubit(getIt.get<ContactRepo>()),
              child: ContactSection(key: contactKey),
            ),
            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }
}
