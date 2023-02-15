import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/movie_screen_view.dart';
import 'package:new_player/screens/profileScreen/profile_component.dart';
import 'package:new_player/screens/searchScreen/movie_category.dart';
import 'package:new_player/screens/searchScreen/search_page.dart';
import 'package:new_player/widgets/movie_poster.dart';

class SingleCategoryMovies extends StatefulWidget {
  const SingleCategoryMovies({super.key});

  @override
  State<SingleCategoryMovies> createState() => _SingleCategoryMoviesState();
}

class _SingleCategoryMoviesState extends State<SingleCategoryMovies> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundposter.webp"),
                fit: BoxFit.fill,
              ),
            ),

              child:  Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        IconButton(
                          iconSize: 10,
                          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,size: 30),
                          onPressed: () {
                            // ...
                          },
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text("ANIMATION",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ],

                    ),

                    Expanded(
                      child: Container(
                        // height: 200,
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                          // height: MediaQuery.of(context).size.height,
                          // color: Colors.lime,
                          child: GridView.count(
                            // physics: ,
                            // physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              crossAxisSpacing: 15.0,
                              mainAxisSpacing: 15.0,
                              shrinkWrap: true,
                              childAspectRatio: (200 / 300),
                              children: [
                                ...List.generate(
                                  25,
                                      (index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                                      child: Container(
                                          child: const MoviePoster()
                                      ),
                                    );
                                  },
                                ),

                              ])

                      ),
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
