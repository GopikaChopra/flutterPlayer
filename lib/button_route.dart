import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:new_player/screens/choose_profile.dart';
import 'package:new_player/screens/login_screen2.dart';
import 'package:new_player/widgets/video_player.dart';
import 'package:new_player/widgets/cust_mini_player.dart';
import 'package:new_player/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/login_screen', page: () => const OnboardingScreen()),
        GetPage(name: '/second', page: () => const ChooseProfile()),
      ],
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Video Player"),
          ),
          body: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 170, 185, 197),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  child: const Text(
                    "Login ",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Get.to(OnboardingScreen());
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                     color: Color.fromARGB(255, 170, 185, 197),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  child: const Text(
                    "Profile ",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {

                      Get.to(ChooseProfile());
                  },
                ),
              ),
            ],
          ),
          
          
          
          ),
    );
  }
}
