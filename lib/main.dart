import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/view/Auth/verfay_email.dart';
import 'package:play_store_test/view/userPages/app_page.dart';
import 'package:play_store_test/view/userPages/homeScreen.dart';
import 'package:play_store_test/view/userPages/user_apps.dart';
import 'view/Auth/sign_up.dart';
import 'view/Auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes.dark,
      initialRoute: "app_page",
      getPages: [
        GetPage(name: "/sign_in", page: () => const Sign_in()),
        GetPage(name: "/sign_up", page: () => const Sign_up()),
        GetPage(name: "/verfiyEmail", page: () => verfayEmail()),
        GetPage(name: "/HomeScreen", page: () => homeScreen()),
        GetPage(name: "/User_apps", page: () => user_apps()),
        GetPage(name: "/app_page", page: () => app_page()),
      ],
    );
  }
}

class themes {
  static ThemeData light = ThemeData.light().copyWith(
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static ThemeData dark = ThemeData.dark().copyWith(
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
