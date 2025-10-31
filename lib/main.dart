import 'package:flutter/material.dart';
import 'package:mymovies/core/app_routes.dart';
import 'package:mymovies/l10n/app_localizations.dart';
import 'package:mymovies/login/login_screen.dart';
import 'package:mymovies/on_boarding_screen/on_boarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        430,
        932,
      ), 
      minTextAdapt: true, 
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: "Movies",
          debugShowCheckedModeBanner: false,
          routes: {
            AppRoutes.onBoardingScreen: (context) => const OnBoardingScreen(),
            AppRoutes.loginScreen: (context) => const LoginScreen(),
          },
          initialRoute: AppRoutes.onBoardingScreen,
          locale: const Locale("ar"),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: const TextScaler.linear(1.0),
              ),
              child: widget!,
            );
          },
        );
      },
    );
  }
}
