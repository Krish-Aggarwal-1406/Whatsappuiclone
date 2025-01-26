import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart'; // Ensure this matches the location of your MyHomePage file
import 'splashscreen.dart'; // Ensure this matches the location of your SplashScreen file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0B141B),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0B141B),
        ),
        popupMenuTheme: PopupMenuThemeData(
            color:Color(0xFF0B141B),

        )
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Set SplashScreen as the initial screen
    );
  }
}
