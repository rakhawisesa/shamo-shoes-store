import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wishlist_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget cartButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, "/cart");
      },
      backgroundColor: secondaryColor,
      child: Image.asset(
        "assets/image/icon_navigation_cart.png",
        width: 25,
      ),
    );
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0), topRight: Radius.circular(0)),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
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
                    "assets/image/icon_navigation_home.png",
                    width: 21,
                    color: currentIndex == 0
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    "assets/image/icon_navigation_chat.png",
                    width: 20,
                    color: currentIndex == 1
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    "assets/image/icon_navigation_favorite.png",
                    width: 20,
                    color: currentIndex == 2
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    "assets/image/icon_navigation_profile.png",
                    width: 18,
                    color: currentIndex == 3
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                ),
                label: ''),
          ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
        // ignore: dead_code
        break;
      case 1:
        return const ChatPage();
        // ignore: dead_code
        break;
      case 2:
        return const WishlistPage();
        // ignore: dead_code
        break;
      case 3:
        return const ProfilePage();
        // ignore: dead_code
        break;
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
