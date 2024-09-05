import 'package:e_commerce/routs.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to remove the debug banner
      title: 'Shopyme',
      theme: AppThemes().lightTheme,
      // darkTheme: AppThemes().darkTheme,
      // themeMode: ThemeMode.system,
      // home: SplashScreen(),
      initialRoute: SplashScreen.routNamge,
      routes: routes,
    );
  }
}
