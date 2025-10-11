import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/routing/app_router.dart';
import 'package:khaled_protfolio/core/routing/routes.dart';

class Protfolio extends StatelessWidget {
  const Protfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isArabic = context.locale.languageCode == 'ar';

    return ScreenUtilInit(
      designSize: const Size(1440, 1149),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: Routes.home,
        theme: ThemeData(
          fontFamily: isArabic ? 'Cairo' : 'Poppins',
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontFamily: isArabic ? 'Cairo' : 'Poppins'),
            bodyMedium: TextStyle(fontFamily: isArabic ? 'Cairo' : 'Poppins'),
          ),
        ),
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget ?? const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
