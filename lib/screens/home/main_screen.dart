import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/screens/home/chat_screen.dart';
import 'package:shamo/screens/home/home_screen.dart';
import 'package:shamo/screens/home/profile_screen.dart';
import 'package:shamo/screens/home/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        shape: const CircleBorder(),
        child: Image.asset('assets/icon_cart.png', width: 20),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 12,
          child: Theme(
            data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
              highlightColor: transparentColor
            ),
            child: BottomNavigationBar(
              backgroundColor: bg4Color,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 22,
                      color: currentIndex == 0 ? primaryColor : inactiveColor
                    ),
                  ),
                  label: ''
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10, right: 20),
                    child: Image.asset(
                      'assets/icon_chat.png',
                      width: 22,
                      color: currentIndex == 1 ? primaryColor : inactiveColor
                    ),
                  ),
                  label: ''
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                    child: Image.asset(
                      'assets/icon_favorite.png',
                      width: 20,
                      color: currentIndex == 2 ? primaryColor : inactiveColor
                    ),
                  ),
                  label: ''
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_profile.png',
                      width: 18,
                      color: currentIndex == 3 ? primaryColor : inactiveColor
                    ),
                  ),
                  label: ''
                ),
              ]
            ),
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0: return const HomeScreen();
        case 1: return const ChatScreen();
        case 2: return const WishlistScreen();
        case 3: return const ProfileScreen();
        default: return const HomeScreen();
      }
    }

    return Scaffold(
      backgroundColor: bg1Color,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: SafeArea(child: body()),
    );
  }
}