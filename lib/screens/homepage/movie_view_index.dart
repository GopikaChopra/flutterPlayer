import 'package:flutter/material.dart';

import 'package:new_player/screens/homepage/categorydropdown.dart';
import 'package:new_player/widgets/movie_poster.dart';

class MovieViewIndex extends StatefulWidget {
  const MovieViewIndex({Key? key}) : super(key: key);

  @override
  State<MovieViewIndex> createState() => _MovieViewIndexState();
}

class _MovieViewIndexState extends State<MovieViewIndex> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Container(
                //       height: 50,
                //       width: 350,
                //       alignment: Alignment.center,
                //       margin: EdgeInsets.only(top: 10),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20.0),
                //
                //       ),
                //       child: Theme(
                //         data: Theme.of(context).copyWith(
                //             canvasColor: const Color.fromARGB(255, 247, 247,
                //                 245), // background color for the dropdown items
                //             buttonTheme: ButtonTheme.of(context).copyWith(
                //               alignedDropdown:
                //               true, //If false (the default), then the dropdown's menu will be wider than its button.
                //             )),
                //         child: const MovieCategory(),
                //       ),
                //     )
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.symmetric(
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
                        physics: const BouncingScrollPhysics(),
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
                              child: const MoviePoster());
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
                          color: Color.fromRGBO(119, 178, 0, 10),
                          // color: Color.fromARGB(119, 178, 0, 0),
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
                                image: AssetImage(
                                    'assets/images/movieposter4.webp'),
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
                          color: Color.fromRGBO(119, 178, 0, 10),
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
                                image: AssetImage(
                                    'assets/images/movieposter2.webp'),
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
                          color: Color.fromRGBO(119, 178, 0, 10),
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
                                image: AssetImage(
                                    'assets/images/movieposter3.webp'),
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
                          color: Color.fromRGBO(119, 178, 0, 10),
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
      ),
    );
  }
}
