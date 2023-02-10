import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:new_player/screens/bottom_navigation.dart';

class MovieScreenView extends StatefulWidget {
  const MovieScreenView({super.key});

  @override
  State<MovieScreenView> createState() => _MovieScreenViewState();
}

class _MovieScreenViewState extends State<MovieScreenView> {
  String dropdownvalue = 'Movies';
  final List myData = List.generate(100, (index) => 'Item $index');
  // List of items in our dropdown menu
  final items = [
    'Movies',
    'Live Channel',
    'Series',
  ];

  final screens = [
    Center(
      child: Text('home'),
    ),
    Center(
      child: Text('search'),
    ),
    Center(
      child: Text('downloads'),
    ),
    Center(
      child: Text('setting'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 120.0,
              backgroundColor: Color.fromARGB(0, 196, 49, 49),
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Row(
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
                        border: Border.all(width: 2),
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
              ),
            ),
     
         
            SliverToBoxAdapter(
              child: Container(
                height: 500,
               width: double.infinity,
                color: Color.fromARGB(255, 177, 44, 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ 
                    
                    Expanded(
                      child: Row( 
                        children: [
                          Container(
                            height: 120,
                            width: 30, 
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 99, 167, 102),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            alignment: Alignment.topLeft,
                            child: const RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "In Theaters",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        
                          Expanded(
                            child: ListView.builder(
                               shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 50,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  height: 100,
                                   width: 50,
                                  child: Text("asdfafgsaf"),
                                
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                     Expanded(
                      child: Row( 
                        children: [
                          Container(
                            height: 120,
                            width: 30, 
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 99, 167, 102),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            alignment: Alignment.topLeft,
                            child: const RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "In Theaters",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        
                          Expanded(
                            child: ListView.builder(
                               shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 50,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  height: 100,
                                   width: 50,
                                  child: Text("asdfafgsaf"),
                                
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigateScreen());
  }
}
