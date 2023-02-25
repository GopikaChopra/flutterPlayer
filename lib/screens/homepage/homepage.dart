import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_player/screens/homepage/livepage.dart';
import 'package:new_player/screens/homepage/movie_view_index.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String dropdownvalue = 'MOVIES';

  // List of items in our dropdown menu
  final List<String> items = [
    'MOVIES',
    'LIVE CHANNEL',
    'SERIES',
  ];

  Map<String, int> selectedHomeScreen = {
    'MOVIES': 0,
    'LIVE CHANNEL': 1,
    'SERIES': 2,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 150.w,
                    height: 120.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"))),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 40.h,
                      width: 100.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.transparent,
                            style: BorderStyle.solid,
                            width: 0.5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          selectedItemBuilder: (BuildContext context) {
                            return items.map<Widget>((String item) {
                              return Container(
                                  alignment: Alignment.centerRight,
                                  width: 180,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(item,
                                        textAlign: TextAlign.end,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16)),
                                  ));
                            }).toList();
                          },
                          dropdownColor: Colors.grey[800],
                          // Initial Value
                          value: dropdownvalue,
                          // Down Arrow Icon
                          isExpanded: true,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: IndexedStack(
            index: selectedHomeScreen[dropdownvalue],
            children: const <Widget>[
              MovieViewIndex(),
              LivePage(),
              Text("Web Series")
            ],
          )),
    );
  }
}
