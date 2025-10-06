import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_protfolio/core/constants/constants.dart';
import 'package:khaled_protfolio/core/routing/app_router.dart';
import 'package:khaled_protfolio/core/routing/routes.dart';
import 'package:khaled_protfolio/core/theming/colors.dart';

class Protfolio extends StatelessWidget {
  const Protfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1149),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: Routes.home,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: kPoppins,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
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
