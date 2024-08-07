
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:roomadda/pages/booking/booking.dart';
import 'package:roomadda/pages/chat/chatPage.dart';
import 'package:roomadda/pages/home/homePage.dart';
import 'package:roomadda/pages/profile/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late MyBooking myBooking;
  late ChatPage messagePage;
  late ProfilePage profilePage;

  @override
  void initState() {
    homePage = const HomePage();
    messagePage = const ChatPage();
    myBooking = const MyBooking();
    profilePage = const ProfilePage();
    pages = [homePage, messagePage, myBooking, profilePage];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
         height: 65,
          backgroundColor: Colors.white,
          color: Theme.of(context).colorScheme.primaryContainer,
          animationDuration: const Duration(microseconds: 500),
          onTap: (int index){
           setState(() {
             currentTabIndex = index;
           });
          },
          items: const[
        Icon(Icons.home_outlined,
        color: Colors.black,
        ),
        Icon(Icons.message_outlined,
          color: Colors.black,
        ),
        Icon(Icons.book_outlined,
          color: Colors.black,
        ),
        Icon(Icons.person_outline,
          color: Colors.black,
        ),
      ]),
      body: pages[currentTabIndex],
    );
  }
}