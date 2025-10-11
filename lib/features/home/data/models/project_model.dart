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
      description:"project_ecosystem",
    ),
    ProjectModel(
      link: 'https://github.com/khaled-fcizu/DocDoc',
      logo: Assets.assetsImagesDocdocLogo,
      name: 'DocDoc',
      description:
 "project_healthcare"    ),
    ProjectModel(
      link: 'https://github.com/khaled-fcizu/bookly_app',
      logo: Assets.assetsImagesBooklyLogo,
      name: 'Bookly',
      description:
"project_books"  ),
    ProjectModel(
      link: 'https://github.com/HamdiElsherpeni/nasa_app',
      logo: Assets.assetsImagesNasaLogo,
      name: 'Nasa',
      description:
"project_nasa"  ),
  ];
}
