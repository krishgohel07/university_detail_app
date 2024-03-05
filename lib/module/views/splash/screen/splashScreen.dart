import 'package:university_details/module/views/splash/controller/splashcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put((Splashcontroller()));
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.lightGreen.shade300,
            ],
          ),
        ),
        child: Image.asset(
          "assets/1.png",
          height: 120,
        ),
      ),
    );
  }
}
