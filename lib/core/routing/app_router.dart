import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/routing/routes.dart';
import 'package:khaled_protfolio/features/home/ui/views/home_view.dart';

class AppRouter {
 static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return null;
    }
  }
}