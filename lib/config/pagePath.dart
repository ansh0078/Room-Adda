
import 'package:get/get.dart';
import 'package:roomadda/pages/auth/authPage.dart';
import 'package:roomadda/pages/home/homePage.dart';
import 'package:roomadda/widgets/bottonNav.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => const AuthPage(),
    transition: Transition.downToUp,
  ),
  GetPage(
    name: "/bottomNav",
    page: () => const BottomNav(),
    transition: Transition.downToUp,
  ),
  GetPage(
    name: "/homePage",
    page: () => const HomePage(),
    transition: Transition.downToUp,
  )
];
