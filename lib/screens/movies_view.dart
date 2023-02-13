import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/homepage/categorydropdown.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  String dropdownvalue = 'Movies';

  // List of items in our dropdown menu
  final items = [
    'Movies',
    'Live Channel',
    'Series',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 2, 2, 2),
      // decoration: BoxDecoration(
      //     color: Colors.white,
      //     border: Border.all(color: Colors.white),
      //     ),
      child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.grey,
                    width: 150,
                    height: 120,
                    // color: Color.fromARGB(255, 253, 247, 247),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"))),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      // color: Colors.greenAccent,
                      // borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                          // color: Color.fromARGB(255, 240, 238, 238),
                          // style: BorderStyle.solid,
                          width: 2),
                    ),
                    child: DropdownButton(
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
                                  color: Color.fromARGB(255, 209, 201, 201),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20)),
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
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    // width: MediaQuery.of(context).size.width,
                    width: 350,
                    alignment: Alignment.center,
                    // padding: EdgeInsets.all(5.0),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0),
                          style: BorderStyle.solid,
                          width: 4),
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: Color.fromARGB(255, 247, 247,
                              245), // background color for the dropdown items
                          buttonTheme: ButtonTheme.of(context).copyWith(
                            alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                          )),
                      child: MovieCategory(),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }

  buildMenuItem(String e) {}
}
