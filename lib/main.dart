import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_player/screens/homepage/homepage.dart';
import 'package:new_player/screens/movie_screen_view.dart';

import 'package:new_player/screens/profileScreen/choose_profile.dart';
import 'package:new_player/screens/settingScreen/settings_page.dart';

import 'package:new_player/screens/splashScreen/login_screen2.dart';
import 'package:new_player/screens/splashScreen/signup_screen.dart';

// import 'package:new_player/screens/videoplayer/video_player.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 820), //Google pixel 4
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            initialRoute: "/",
            getPages: [
              GetPage(
                  name: "/",
                  page: () =>      const MovieScreenView()) , //const VideoPlayer()),  //MovieScreenView
              GetPage(name: "/profile", page: () => const ChooseProfile()),
              GetPage(name: "/signup", page: () => const SignupScreen()),
              GetPage(name: "/login", page: () => const OnboardingScreen()),
            ],
            debugShowCheckedModeBanner: false,
            title: 'IPTVFavicon',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
          );
        });
  }
}
