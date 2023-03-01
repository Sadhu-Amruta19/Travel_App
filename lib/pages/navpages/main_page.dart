import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel_app/pages/navpages/bar_item_page.dart';
import 'package:travel_app/pages/navpages/home_page.dart';
import 'package:travel_app/pages/navpages/my_page.dart';
import 'package:travel_app/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), SearchPage(), BarItemPage(), MyPage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: GNav(
          // selectedItemColor: Colors.black54,
          // unselectedItemColor: Colors.grey.withOpacity(0.5),
          // showUnselectedLabels: false,
          // showSelectedLabels: false,
          // elevation: 0,
          // items: [

          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          gap: 8,
          onTabChange: onTap,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.bar_chart_sharp,
              text: "tabbar",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
