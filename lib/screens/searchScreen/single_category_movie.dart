import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/movie_screen_view.dart';
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
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: (){
                            // print("tapped");
                            Navigator.pushReplacement(
                              context,MaterialPageRoute(builder: (context) => MovieScreenView() //here pass the actual values of these variables, for example false if the payment isn't successfull..etc
                            ),);
                            },
                          child: const  Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,
                            // size: 36.0,
                          ),
                        ),

                        const SizedBox(
                          width: 70,
                        ),
                        const Text("ANIMATION",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ],

                    ),

                    Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                          child: GridView.count(
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
