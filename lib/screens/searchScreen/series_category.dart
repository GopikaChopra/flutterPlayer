import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SeriesCategory extends StatefulWidget {
  const SeriesCategory({super.key});

  @override
  State<SeriesCategory> createState() => _SeriesCategoryState();
}

class _SeriesCategoryState extends State<SeriesCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // color: Colors.cyan,
      child: Stack(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              image: DecorationImage(
                image: const AssetImage('assets/images/Layer_27.webp'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 12, 12, 12).withOpacity(0.5),
                  BlendMode.srcOver,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                "Comedy",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20.0,
                    height: 1.4,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
