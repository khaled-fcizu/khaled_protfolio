import 'package:khaled_protfolio/core/constants/assets.dart';

class ProjectModel {
  final String logo;
  final String name;
  final String description;
  final String link;

  const ProjectModel({
    required this.logo,
    required this.name,
    required this.description,
    required this.link,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      link: 'https://github.com/khaled-fcizu/fruits_hub',
      logo: Assets.assetsImagesFruitsHubLogo,
      name: 'Fruits Hub – E-commerce & Admin Dashboard',
      description:
          'Developed a complete e-commerce ecosystem using Flutter, consisting of a user app and an admin dashboard. Implemented Clean Architecture with Bloc and Get_it for scalable, maintainable flows. Integrated Firebase (Auth, Firestore) and Supabase for backend services, real-time data, and secure media handling. Enhanced UX with ScreenUtil, skeleton loading, and image caching, including full cart, checkout, and product management features.',
    ),
    ProjectModel(
      link: 'https://github.com/khaled-fcizu/DocDoc',
      logo: Assets.assetsImagesDocdocLogo,
      name: 'DocDoc',
      description:
          'Developed a cross-platform healthcare app using Flutter with a clean, maintainable structure. Implemented secure authentication and efficient API integration using Dio and Retrofit. Enhanced performance and user experience with responsive design and smooth interactions.',
    ),
    ProjectModel(
      link: 'https://github.com/khaled-fcizu/bookly_app',
      logo: Assets.assetsImagesBooklyLogo,
      name: 'Bookly',
      description:
          'I built a scalable book discovery app using Flutter with a clean and predictable architecture. I integrated APIs, managed state efficiently, and optimized navigation and dependency management. I also enhanced the UI/UX with responsive layouts, smooth performance, and interactive features.',
    ),
    ProjectModel(
      link: 'https://github.com/HamdiElsherpeni/nasa_app',
      logo: Assets.assetsImagesNasaLogo,
      name: 'Nasa',
      description:
          'I developed the NASA Machine Learning App’s entire network layer, including all API integrations, optimization, and Dio setup. I also built and structured all feature layers to ensure clean architecture, scalability, and efficient data flow across the app.',
    ),
  ];
}
