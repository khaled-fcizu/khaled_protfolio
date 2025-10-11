import 'package:flutter/material.dart';

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
      title: "Mobile App Development",
      description: "mobile_app_development",
    ),
    ServiceModel(
      icon: Icons.cloud_outlined,
      title: "Firebase & Supabase Integration",
      description: 'firebase_supabase_integration',
    ),
    ServiceModel(
      icon: Icons.design_services_outlined,
      title: "UI/UX Design Implementation",
      description: 'ui_ux_design_implementation',
    ),
    ServiceModel(
      icon: Icons.science_outlined,
      title: "AI & Machine Learning Apps",
      description: 'ai_machine_learning_apps',
    ),
  ];
}
