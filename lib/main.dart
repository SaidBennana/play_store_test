import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store_test/view/Auth/verfay_email.dart';
import 'package:play_store_test/view/userPages/homeScreen.dart';
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
      initialRoute: "HomeScreen",
      getPages: [
        GetPage(name: "/sign_in", page: () => const Sign_in()),
        GetPage(name: "/sign_up", page: () => const Sign_up()),
        GetPage(name: "/HomeScreen", page: () => homeScreen()),
      ],
    );
  }
}
