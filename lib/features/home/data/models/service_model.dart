import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ServiceModel {
  final IconData icon;
  final String title;
  final String description;

  ServiceModel({
    required this.icon,
    required this.title,
    required this.description,
  });
  static List<ServiceModel> services = [
    ServiceModel(
      icon: Icons.phone_iphone_outlined,
      title: 'Mobile App Development',
      description:
          'Building high-quality cross-platform mobile apps using Flutter with clean architecture and state management (Bloc & GetX).',
    ),
    ServiceModel(
      icon: Icons.cloud_outlined,
      title: 'Firebase & Supabase Integration',
      description:
          'Integrating Firebase & Supabase services like Authentication, Firestore, Storage, and Notifications to build scalable backend-powered apps.',
    ),
    ServiceModel(
      icon: Icons.design_services_outlined,
      title: 'UI/UX Design Implementation',
      description:
          'Translating modern UI/UX designs into responsive Flutter interfaces with smooth animations and excellent performance.',
    ),
    ServiceModel(
      icon: Icons.science_outlined,
      title: 'AI & Machine Learning Apps',
      description:
          'Creating smart applications powered by AI and ML models, integrating prediction and automation features with Flutter.',
    ),
  ];
}
