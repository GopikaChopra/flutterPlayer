import 'package:flutter/material.dart';

import 'package:new_player/screens/homepage/categorydropdown.dart';
import 'package:new_player/screens/downloadScreen/downloads_page.dart';
import 'package:new_player/screens/homepage/homepage.dart';
import 'package:new_player/screens/searchScreen/search_page.dart';
import 'package:new_player/screens/settingScreen/settings_page.dart';

class MovieScreenView extends StatefulWidget {
  const MovieScreenView({super.key});

  @override
  State<MovieScreenView> createState() => _MovieScreenViewState();
}

class _MovieScreenViewState extends State<MovieScreenView> {
  String dropdownvalue = 'Movies';

  // List of items in our dropdown menu
  List<Widget> screens = [
    const HomePageScreen(),
    const SearchPage(),
    const DownloadPage(),
    const SettingsPage()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 15,
          unselectedFontSize: 14,
          onTap: (index) {
            setState(() => selectedIndex = index);
          },
          currentIndex: selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'Downloads',
              icon: Icon(Icons.download, color: Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings, color: Colors.white),
            ),
          ],
        ));
  }
}
