import 'package:flutter/material.dart';
import 'package:new_player/screens/homepage/categorydropdown.dart';
import 'package:new_player/screens/searchScreen/live_category.dart';
import 'package:new_player/screens/searchScreen/movie_category.dart';
import 'package:new_player/screens/searchScreen/series_category.dart';
import 'package:new_player/screens/searchScreen/single_category_movie.dart';
import 'package:tab_container/tab_container.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return ListView(
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
            length: 3, // length of tabs
            initialIndex: 0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: const TabBar(
                      indicator: ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:  Radius.circular(10), topLeft:  Radius.circular(10),  bottomRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0))
                          ),
                          color: Color.fromARGB(255, 61, 54, 54)
                      ),
                      labelColor: Color.fromARGB(255, 227, 236, 228),
                      unselectedLabelColor:
                          Color.fromARGB(255, 233, 225, 225),
                      tabs: [
                        Tab(text: 'MOVIES'),
                        Tab(text: 'WEB SERIES'),
                        Tab(text: 'LIVE'),
                      ],
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                      height: 700,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(children: <Widget>[
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight:  Radius.circular(10), topLeft:  Radius.circular(0),  bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                  color: Color.fromARGB(255, 61, 54, 54),
                                ),

                                // height: 10,
                                // color: Color.fromARGB(255, 51, 47, 47),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: 'search movies...',
                                    hintStyle: TextStyle(
                                      color:
                                          Color.fromARGB(255, 230, 220, 220),
                                      fontSize: 15,
                                      // fontStyle: FontStyle.italic,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Color.fromRGBO(119, 178, 0, 10),
                                    ),
                                    // suffixIcon: Icon(Icons.camera_alt)
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
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
                              Expanded (
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 8,
                                  itemBuilder: (BuildContext ctx, int index) {
                                    return Container(
                            padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 0, right: 0),
                          child: SearchMovieCategory(),
                        );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight:  Radius.circular(10), topLeft:  Radius.circular(10),  bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  color: Color.fromARGB(255, 61, 54, 54),
                                ),

                                // height: 10,
                                // color: Color.fromARGB(255, 51, 47, 47),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: 'search web series...',
                                    hintStyle: TextStyle(
                                      color:
                                      Color.fromARGB(255, 230, 220, 220),
                                      fontSize: 15,
                                      // fontStyle: FontStyle.italic,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color:
                                      Color.fromARGB(255, 36, 190, 126),
                                    ),
                                    // suffixIcon: Icon(Icons.camera_alt)
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 0, left: 10, right: 10),
                                child: const Text(
                                  'All',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Expanded (
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 8,
                                  itemBuilder: (BuildContext ctx, int index) {
                                    return Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 0, right: 0),
                                      child: SeriesCategory(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight:  Radius.circular(0), topLeft:  Radius.circular(10),  bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  color: Color.fromARGB(255, 61, 54, 54),
                                ),

                                // height: 10,
                                // color: Color.fromARGB(255, 51, 47, 47),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: 'search live channel...',
                                    hintStyle: TextStyle(
                                      color:
                                      Colors.white,
                                      fontSize: 15,
                                      // fontStyle: FontStyle.italic,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color:
                                      Color.fromARGB(255, 36, 190, 126),
                                    ),
                                    // suffixIcon: Icon(Icons.camera_alt)
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 0, left: 10, right: 10),
                                child: const Text(
                                  'All',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Expanded (
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 8,
                                  itemBuilder: (BuildContext ctx, int index) {
                                    return Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10, left: 0, right: 0),
                                      child: LiveCategory(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                      ])),
                ])),
      ],
    );
  }
}
