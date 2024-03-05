import 'package:university_details/module/views/splash/screen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'module/views/homepager/screen/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: 'splash',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/splash', page: () => SplashScreen()),
      ],
    );
  }
}
