import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MovieCategory extends StatefulWidget {
  const MovieCategory({super.key});

  @override
  State<MovieCategory> createState() => _MovieCategoryState();
}

class _MovieCategoryState extends State<MovieCategory> {
  String dropdownvalue = 'All Genres';

  final items = [
    'All Genres',
    'Animation',
    'Action',
    "Thriller",
    "Comedy",
    "Drama"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(84, 84, 84, 84),
      //  decoration: BoxDecoration(
      //     color: Colors.white,
      //     border: Border.all(color: Colors.white),
      //     ),
        child: DropdownButton(
          //  borderRadius: BorderRadius.circular(30.0),
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
                      color: Color.fromARGB(255, 238, 232, 232),
                      // fontWeight: FontWeight.w500,
                      fontSize: 22)),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ));
  }
}
