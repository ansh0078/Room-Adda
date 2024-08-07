
import 'package:get/get.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => AuthPage(),
    transition: Transition.downToUp,
  ),
  GetPage(
    name: "/bottomNav",
    page: () => BottomNav(),
    transition: Transition.downToUp,
  ),
  GetPage(
    name: "/homePage",
    page: () => HomePage(),
    transition: Transition.downToUp,
  )
];
