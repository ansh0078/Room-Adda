
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:roomadda/pages/auth/authPage.dart';
import 'package:roomadda/widgets/bottonNav.dart';

class SplashController extends GetxController {
  final auth = FirebaseAuth.instance;

  void onInit() async {
    super.onInit();
    splashHandle();
  }

  void splashHandle() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    if (auth.currentUser == null) {
      Get.to(AuthPage());
    } else {
      Get.to(BottomNav());
    }
  }
}
