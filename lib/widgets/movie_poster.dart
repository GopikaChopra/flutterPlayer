import 'package:flutter/material.dart';

class MoviePoster extends StatefulWidget {
  const MoviePoster({super.key});

  @override
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: const DecorationImage(
          image: AssetImage('assets/images/joker.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      );
  }
}
