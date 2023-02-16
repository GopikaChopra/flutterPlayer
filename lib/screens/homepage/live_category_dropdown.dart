import 'package:flutter/material.dart';

class LiveCategoryDropdown extends StatefulWidget {
  const LiveCategoryDropdown({super.key});

  @override
  State<LiveCategoryDropdown> createState() => _LiveCategoryDropdownState();
}

class _LiveCategoryDropdownState extends State<LiveCategoryDropdown> {
  String dropdownvalue = 'US';

  final items = [
    'US',
    'UK',
    'Arts',
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
                        color: Color.fromARGB(255, 238, 232, 232),
                        // fontWeight: FontWeight.w500,
                        fontSize: 18)),
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
