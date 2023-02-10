import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/bottom_navigation.dart';
import 'package:new_player/screens/categorydropdown.dart';

class MovieScreenView extends StatefulWidget {
  const MovieScreenView({super.key});

  @override
  State<MovieScreenView> createState() => _MovieScreenViewState();
}

class _MovieScreenViewState extends State<MovieScreenView> {
  String dropdownvalue = 'Movies';
  final List myData = List.generate(100, (index) => 'Item $index');
  // List of items in our dropdown menu
  final items = [
    'Movies',
    'Live Channel',
    'Series',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200.0,
              backgroundColor: Colors.transparent,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Column(
                    children: [
                      Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 150,
                            height: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/logo.png"))),
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  color: Colors.transparent,
                                  style: BorderStyle.solid,
                                  width: 0.5),
                            ),
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
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 209, 201, 201),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20)),
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 350,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 0.5),
                            ),
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                  canvasColor: Color.fromARGB(255, 247, 247,
                                      245), // background color for the dropdown items
                                  buttonTheme: ButtonTheme.of(context).copyWith(
                                    alignedDropdown:
                                        true, //If false (the default), then the dropdown's menu will be wider than its button.
                                  )),
                              child: MovieCategory(),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 750,
                width: double.infinity,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 30,
                            margin: const EdgeInsets.only(
                                left: 0, top: 0, right: 2, bottom: 0),
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
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 50,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  // padding: EdgeInsets.symmetric(horizontal: 40),
                                  // margin: EdgeInsets.symmetric(horizontal: 1),
                                  margin: const EdgeInsets.only(
                                      left: 12, top: 0, right: 0, bottom: 15),
                                  height: 150,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: const DecorationImage(
                                      image:
                                          AssetImage('assets/images/joker.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 30,
                            margin: const EdgeInsets.only(
                                left: 0, top: 0, right: 2, bottom: 0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 99, 167, 102),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            // alignment: Alignment.topLeft,
                            child: const Center(
                              child:  RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "Recently Added",
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
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 50,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  // padding: EdgeInsets.symmetric(horizontal: 40),
                                  // margin: EdgeInsets.symmetric(horizontal: 1),
                                  margin:const  EdgeInsets.only(
                                      left: 12, top: 0, right: 0, bottom: 15),
                                  height: 150,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image:const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/avtar2.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 30,
                            margin: const EdgeInsets.only(
                                left: 0, top: 0, right: 2, bottom: 0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 99, 167, 102),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            // alignment: Alignment.topLeft,
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  "Trending",
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
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 50,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  // padding: EdgeInsets.symmetric(horizontal: 40),
                                  // margin: EdgeInsets.symmetric(horizontal: 1),
                                  margin: EdgeInsets.only(
                                      left: 12, top: 0, right: 0, bottom: 15),
                                  height: 150,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/1917.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // backgroundColor: Color.fromARGB(255, 13, 13, 14),
          backgroundColor: Colors.transparent,

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
        )
        // body: screens[currentIndex],
        );
  }
}
