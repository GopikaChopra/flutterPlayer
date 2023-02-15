import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_player/widgets/movie_poster.dart';

import 'categorydropdown.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String dropdownvalue = 'Movies';

  // List of items in our dropdown menu
  final List<String> items = [
    'Movies',
    'Live Channel',
    'Series',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // SliverAppBar(
        //   bottom: PreferredSize(
        //     preferredSize: Size(MediaQuery.of(context).size.width, 180),
        //     child: Column(
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               width: 150,
        //               height: 120,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image: AssetImage("assets/images/logo.png"))),
        //             ),
        //             Container(
        //               height: 40,
        //               width: 120,
        //               alignment: Alignment.center,
        //               padding: const EdgeInsets.symmetric(
        //                   horizontal: 0, vertical: 0),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(12.0),
        //                 border: Border.all(
        //                     color: Colors.transparent,
        //                     style: BorderStyle.solid,
        //                     width: 0.5),
        //               ),
        //               child: DropdownButtonHideUnderline(
        //                 child: DropdownButton(
        //                   dropdownColor: Colors.grey[800],
        //                   // Initial Value
        //                   value: dropdownvalue,
        //                   // Down Arrow Icon
        //                   isExpanded: true,
        //                   icon: const Icon(
        //                     Icons.keyboard_arrow_down,
        //                     color: Colors.white,
        //                   ),
        //                   // Array list of items
        //                   items: items.map((String items) {
        //                     return DropdownMenuItem(
        //                       value: items,
        //                       child: Text(items,
        //                           style: const TextStyle(
        //                               color: Color.fromARGB(
        //                                   255, 209, 201, 201),
        //                               fontWeight: FontWeight.w500,
        //                               fontSize: 20)),
        //                     );
        //                   }).toList(),
        //                   // After selecting the desired option,it will
        //                   // change button value to selected value
        //                   onChanged: (String? newValue) {
        //                     setState(() {
        //                       dropdownvalue = newValue!;
        //                     });
        //                   },
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               height: 50,
        //               width: 350,
        //               alignment: Alignment.center,
        //               padding:
        //                   EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(12.0),
        //                 border: Border.all(
        //                     color: Colors.grey,
        //                     style: BorderStyle.solid,
        //                     width: 0.5),
        //               ),
        //               child: Theme(
        //                 data: Theme.of(context).copyWith(
        //                     canvasColor: const Color.fromARGB(255, 247, 247,
        //                         245), // background color for the dropdown items
        //                     buttonTheme: ButtonTheme.of(context).copyWith(
        //                       alignedDropdown:
        //                           true, //If false (the default), then the dropdown's menu will be wider than its button.
        //                     )),
        //                 child: const MovieCategory(),
        //               ),
        //             )
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),

        //   pinned: true,
        //   expandedHeight: 180.0,
        //   backgroundColor: Colors.transparent,
        //   floating: true,
        //   flexibleSpace: FlexibleSpaceBar(
        //     background: Column(
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               width: 150,
        //               height: 120,
        //               decoration: const BoxDecoration(
        //                   image: DecorationImage(
        //                       image: AssetImage("assets/images/logo.png"))),
        //             ),
        //             Container(
        //               height: 40,
        //               width: 120,
        //               alignment: Alignment.center,
        //               padding: const EdgeInsets.symmetric(
        //                   horizontal: 0, vertical: 0),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(12.0),
        //                 border: Border.all(
        //                     color: Colors.transparent,
        //                     style: BorderStyle.solid,
        //                     width: 0.5),
        //               ),
        //               child: DropdownButtonHideUnderline(
        //                 child: DropdownButton(
        //                   dropdownColor: Colors.grey[800],
        //                   // Initial Value
        //                   value: dropdownvalue,
        //                   // Down Arrow Icon
        //                   isExpanded: true,
        //                   icon: const Icon(
        //                     Icons.keyboard_arrow_down,
        //                     color: Colors.white,
        //                   ),
        //                   // Array list of items
        //                   items: items.map((String items) {
        //                     return DropdownMenuItem(
        //                       value: items,
        //                       child: Text(items,
        //                           style: const TextStyle(
        //                               color: Color.fromARGB(
        //                                   255, 209, 201, 201),
        //                               fontWeight: FontWeight.w500,
        //                               fontSize: 20)),
        //                     );
        //                   }).toList(),
        //                   // After selecting the desired option,it will
        //                   // change button value to selected value
        //                   onChanged: (String? newValue) {
        //                     setState(() {
        //                       dropdownvalue = newValue!;
        //                     });
        //                   },
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               height: 50,
        //               width: 350,
        //               alignment: Alignment.center,
        //               padding:
        //                   EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(12.0),
        //                 border: Border.all(
        //                     color: Colors.grey,
        //                     style: BorderStyle.solid,
        //                     width: 0.5),
        //               ),
        //               child: Theme(
        //                 data: Theme.of(context).copyWith(
        //                     canvasColor: const Color.fromARGB(255, 247, 247,
        //                         245), // background color for the dropdown items
        //                     buttonTheme: ButtonTheme.of(context).copyWith(
        //                       alignedDropdown:
        //                           true, //If false (the default), then the dropdown's menu will be wider than its button.
        //                     )),
        //                 child: const MovieCategory(),
        //               ),
        //             )
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150.w,
                    height: 120.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"))),
                  ),
                  Container(
                    height: 40.h,
                    width: 100.w,
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                          color: Colors.transparent,
                          style: BorderStyle.solid,
                          width: 0.5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        dropdownColor: Colors.grey[800],
                        // Initial Value
                        value: dropdownvalue,
                        // Down Arrow Icon
                        isExpanded: true,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 209, 201, 201),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 350,
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 0.5),
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: const Color.fromARGB(255, 247, 247,
                              245), // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: const MovieCategory(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    height: 210,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 50,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            margin: EdgeInsets.only(
                                left: index == 0 ? 38 : 12,
                                top: 0,
                                right: 0,
                                bottom: 15),
                            child: const MoviePoster()
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 80,
                      width: 30,
                      margin: const EdgeInsets.only(top: 35, bottom: 35),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 99, 167, 102),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "In Theaters",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    height: 210,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 50,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? 38 : 12,
                              top: 0,
                              right: 0,
                              bottom: 15),
                          // height: 90,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/joker.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 80,
                      width: 30,
                      margin: const EdgeInsets.only(top: 35, bottom: 35),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 99, 167, 102),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "In Theaters",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    height: 210,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 50,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? 38 : 12,
                              top: 0,
                              right: 0,
                              bottom: 15),
                          // height: 90,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/joker.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 80,
                      width: 30,
                      margin: const EdgeInsets.only(top: 35, bottom: 35),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 99, 167, 102),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "In Theaters",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    height: 210,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 50,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? 38 : 12,
                              top: 0,
                              right: 0,
                              bottom: 15),
                          // height: 90,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/joker.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 80,
                      width: 30,
                      margin: const EdgeInsets.only(top: 35, bottom: 35),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 99, 167, 102),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "In Theaters",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
