import 'package:flutter/material.dart';

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
        color: const Color.fromARGB(84, 84, 84, 84),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: Colors.grey[800],

            value: dropdownvalue,

            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),

            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15)),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ));
  }
}
