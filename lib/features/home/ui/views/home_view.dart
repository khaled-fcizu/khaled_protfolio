import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/helpers/spacing_helper.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/brief_overview_section.dart';
import 'package:khaled_protfolio/features/home/ui/views/widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2226),
      body: SingleChildScrollView(
        child: Column(
          children: [verticalSpace(53), HomeAppBar(), BriefOverviewSection()],
        ),
      ),
    );
  }
}
