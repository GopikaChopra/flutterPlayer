import 'package:flutter/material.dart';
import 'package:new_player/screens/homepage/categorydropdown.dart';
import 'package:new_player/screens/searchScreen/movie_category.dart';
import 'package:tab_container/tab_container.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              height: 120,
              // color: Colors.amberAccent,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Group_5.webp"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  "SEARCH",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              )),
        ),
        DefaultTabController(
            length: 4, // length of tabs
            initialIndex: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: const TabBar(
                        //             indicator: ShapeDecoration(
                        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.only()),
                        //   color: Colors.red
                        // ),
                        //         indicator: BoxDecoration(
                        // borderRadius: BorderRadius.all(20), // Creates border
                        // color: Colors.greenAccent),
                        labelColor: Color.fromARGB(255, 227, 236, 228),
                        unselectedLabelColor:
                            Color.fromARGB(255, 233, 225, 225),
                        tabs: [
                          Tab(text: 'Movies'),
                          Tab(text: 'TV shows'),
                          Tab(text: 'Events'),
                          Tab(text: 'Channel'),
                        ],
                      ),
                    ),
                    Container(
                        // padding: EdgeInsets.all(20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        height: 700,
                        width: MediaQuery.of(context).size.width,
                        child: TabBarView(children: <Widget>[
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 61, 54, 54),
                                  ),
                          
                                  // height: 10,
                                  // color: Color.fromARGB(255, 51, 47, 47),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: 'search movies',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 230, 220, 220),
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Color.fromARGB(255, 36, 190, 126),
                                      ),
                                      // suffixIcon: Icon(Icons.camera_alt)
                                    ),
                                  ),
                                ),
                                Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.amberAccent,
                      // padding: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 0, left: 10, right: 10),
                      child: const Text(
                        'Genres',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.only(
                          top: 0, bottom: 0, left: 10, right: 10),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 7,
                        //  physics: NeverScrollableScrollPhysics(),
                        // physics: AlwaysScrollableScrollPhysics(),
                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                              padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 0, right: 0),
                            // color: Color.fromARGB(255, 44, 122, 44),
                            child: SearchMovieCategory(),
                          );
                        },
                      ),
                    ),
                              ],
                            ),
                          ),
                          Container(
                            child: const Center(
                              child: Text('Display Tab 2',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.amberAccent,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            child: const Center(
                              child: Text('Display Tab 3',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent)),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text('Display Tab 4',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent)),
                            ),
                          ),
                        ])),
                   
                  ]),
            )),
      ],
    ));
  }
}
