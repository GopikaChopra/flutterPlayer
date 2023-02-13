import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:new_player/screens/profileScreen/profile_component.dart';

class ChooseProfile extends StatefulWidget {
  const ChooseProfile({super.key});

  @override
  State<ChooseProfile> createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 140,
              // color: Colors.red,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Group_5.webp"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 5, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            '',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 251, 251),
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'CHOOSE PROFILE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 253, 247, 247),
                                fontWeight: FontWeight.w800,
                                fontSize: 20),
                          )),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.warning,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'Edit',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: GridView.count(
              // physics: ,
              // physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: [
                ...List.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Container(
                          // padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                          alignment: Alignment.center,
                          child: const ProfileComponent()),
                    );
                  },
                ),
                Container(
                  height: 150,
                  width: 100,
                  alignment: Alignment.center,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100.0,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: const Center(
                            child: Icon(Icons.add, color: Colors.white)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 14.0),
                        margin: const EdgeInsets.only(top: 100.0),
                        child: const Text(
                          "create new",
                          style: TextStyle(
                            color: Color.fromARGB(255, 253, 247, 247),
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
