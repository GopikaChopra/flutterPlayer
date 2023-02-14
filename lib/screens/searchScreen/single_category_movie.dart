import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/profileScreen/profile_component.dart';
import 'package:new_player/screens/searchScreen/movie_category.dart';
import 'package:new_player/screens/searchScreen/search_page.dart';

class SingleCategoryMovies extends StatefulWidget {
  const SingleCategoryMovies({super.key});

  @override
  State<SingleCategoryMovies> createState() => _SingleCategoryMoviesState();
}

class _SingleCategoryMoviesState extends State<SingleCategoryMovies> {
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        Padding(
          // padding: const EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Container(
              height: 100,
              // color: Colors.amberAccent,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/movieposter.webp"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  "Animation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: GridView.count(
                // physics: ,
                // physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: [
                  ...List.generate(
                    10,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 1.0,
                        ),
                        // padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                            // padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                            alignment: Alignment.center,
                            child: Container(
                                height: 300,
                                width: 180,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/movie1.webp"),
                                    fit: BoxFit.cover,
                                  ),
                                ))),
                      );
                    },
                  ),
                ]),
          ),
        ),
      ],
    ));
  }
}
