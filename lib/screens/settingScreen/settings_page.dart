import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/movie_screen_view.dart';
import 'package:new_player/screens/searchScreen/search_page.dart';
import 'package:new_player/screens/settingScreen/setting_list.dart';
import 'package:new_player/widgets/movie_poster.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/settingbackgroundimg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 23,
                        child: const Text(
                          "PROFILE & SETTINGS",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 23,
                        height: 23,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/profile_setting_icon.webp"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                        child:Container(
                          // padding: EdgeInsets.only(top: 50),
                          // color: Color.fromARGB(255, 182, 169, 122),
                                        child: const SettingList()
                                    ),),
                                    
                  ),
                   

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
