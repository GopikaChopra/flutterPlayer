import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchMovieCategory extends StatefulWidget {
  const SearchMovieCategory({super.key});

  @override
  State<SearchMovieCategory> createState() => _SearchMovieCategoryState();
}

class _SearchMovieCategoryState extends State<SearchMovieCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // color: Colors.cyan,
      child: Stack(
        children: [
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              image: DecorationImage(
                image: const AssetImage('assets/images/Layer_24.webp'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 12, 12, 12).withOpacity(0.6),
                  BlendMode.srcOver,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                "Action",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22.0,
                    height: 1.4,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
