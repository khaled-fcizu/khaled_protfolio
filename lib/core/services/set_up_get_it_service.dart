import 'package:get_it/get_it.dart';
import 'package:khaled_protfolio/core/services/email_service.dart';
import 'package:khaled_protfolio/core/services/emailjs_service.dart';
import 'package:khaled_protfolio/features/home/data/repos/contact_repo.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpGetItService() async {
  getIt.registerSingleton<EmailService>(EmailjsService());
  getIt.registerSingleton<ContactRepo>(ContactRepo(getIt.get<EmailService>()));
}