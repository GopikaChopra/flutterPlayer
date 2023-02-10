import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/choose_profile.dart';
import 'package:new_player/screens/login_screen.dart';
import 'package:new_player/screens/login_screen2.dart';

class BottomNavigateScreen extends StatefulWidget {
  const BottomNavigateScreen({super.key});

  @override
  State<BottomNavigateScreen> createState() => _BottomNavigateScreenState();
}

class _BottomNavigateScreenState extends State<BottomNavigateScreen> {
int currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return  Container(
        child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 43, 40, 46),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (index) {
        setState(() => currentIndex = index);
      },
      currentIndex: currentIndex,
      // onTap: (index) => currentIndex = index,
      items: [
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
