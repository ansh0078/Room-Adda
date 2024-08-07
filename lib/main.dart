import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:roomadda/config/pagePath.dart';
import 'package:roomadda/firebase_options.dart';
import 'package:roomadda/widgets/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Room Adda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: const SplashScreen(),
    );
  }
}
