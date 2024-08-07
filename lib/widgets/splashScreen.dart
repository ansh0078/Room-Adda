
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomadda/config/images.dart';
import 'package:roomadda/controller/SplashControler.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Image.asset(AssetsImage.logo),
      ),
    );
  }
}
