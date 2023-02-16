import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_player/screens/homepage/homepage.dart';
import 'package:new_player/screens/homepage/livepage.dart';

import 'package:new_player/screens/movie_screen_view.dart';
import 'package:new_player/screens/profileScreen/choose_profile.dart';
import 'package:new_player/screens/profileScreen/profile_component.dart';
import 'package:new_player/screens/searchScreen/live_category.dart';
import 'package:new_player/screens/searchScreen/single_category_movie.dart';
import 'package:new_player/screens/searchScreen/single_live_category.dart';
import 'package:new_player/screens/splashScreen/login_screen2.dart';
import 'package:new_player/screens/splashScreen/signup_screen.dart';

void main() {
  runApp(const MyApp());
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
            debugShowCheckedModeBanner: false,
            title: 'IPTVFavicon',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: const MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(255, 0, 0, 0),
            child: const LivePage())); //const ChooseProfile() //MovieScreenView //SingleLiveCategory //SingleCategoryMovies // SignupScreen
  }
}
