
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

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
  late MessagePage messagePage;
  late ProfilePage profilePage;

  @override
  void initState() {
    homePage = HomePage();
    messagePage = MessagePage();
    myBooking = MyBooking();
    profilePage = ProfilePage();
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