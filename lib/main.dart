import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:new_player/screens/bottom_navigation.dart';
import 'package:new_player/screens/choose_profile.dart';
import 'package:new_player/screens/login_screen2.dart';
import 'package:new_player/screens/movie_screen_view.dart';
import 'package:new_player/screens/movies_view.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
          // appBar: AppBar(
          //   title: Text("Video Player"),
          // ),
          body: Container(
            
              height: MediaQuery.of(context).size.height,
              color: Color.fromARGB(255, 0, 0, 0),
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //       image: AssetImage("assets/images/login_bg.jpg"),
              //       fit: BoxFit.cover),
              // ),
              child: Align(
                alignment: Alignment.topRight,
                child: MovieScreenView()))),
    );
  }
}
