import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:khaled_protfolio/core/services/set_up_get_it_service.dart';
import 'package:khaled_protfolio/core/widgets/restart_widget.dart';
import 'package:khaled_protfolio/protfolio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await setUpGetItService();
  runApp(
    EasyLocalization(
      supportedLocales: [const Locale('en'), const Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: RestartWidget(child: const Protfolio()),
    ),
  );
}
