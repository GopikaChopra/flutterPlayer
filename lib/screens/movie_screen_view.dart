import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';

import 'package:new_player/screens/downloadScreen/downloads_page.dart';
import 'package:new_player/screens/homepage/homepage.dart';
import 'package:new_player/screens/searchScreen/search_page.dart';
import 'package:new_player/screens/settingScreen/settings_page.dart';
import 'package:new_player/screens/videoScreen/video_screen.dart';
import 'package:new_player/utils/video_providers.dart';

final miniPlayHeight = StateProvider((ref) => 0.0);
final miniPlayPercent = StateProvider((ref) => 0.0);

class MovieScreenView extends ConsumerStatefulWidget {
  const MovieScreenView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieScreenViewState();
}

class _MovieScreenViewState extends ConsumerState<MovieScreenView> {
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
    final miniPlayController = ref.watch(miniPlayerController);

    final isVideoPlaying = ref.watch(isVideoPlayingController);

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              screens[selectedIndex],
              Offstage(
                offstage: !isVideoPlaying,
                child: Miniplayer(
                  controller: miniPlayController,
                  minHeight: 70,
                  maxHeight: MediaQuery.of(context).size.height,
                  builder: (height, percentage) {
                    return VideoPlayerScreen(
                      miniPlayerHeight: height,
                      miniPlayerHeightPercent: percentage,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black.withOpacity(0.9),
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
