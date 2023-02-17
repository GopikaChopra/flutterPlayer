import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_player/screens/homepage/live_category_dropdown.dart';
import 'package:new_player/widgets/live_channel_poster.dart';
import 'package:new_player/widgets/movie_poster.dart';
import 'categorydropdown.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  String dropdownvalue = 'Live Channel';

  // List of items in our dropdown menu
  final List<String> items = [
    'Movies',
    'Live Channel',
    'Series',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150.w,
              height: 120.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"))),
            ),
            Container(
              height: 40.h,
              width: 100.w,
              alignment: Alignment.center,
              padding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                    color: Colors.transparent,
                    style: BorderStyle.solid,
                    width: 0.5),
              ),
              child: DropdownButtonHideUnderline(
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
                          style: const TextStyle(
                              color: Color.fromARGB(255, 209, 201, 201),
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
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
            ),
          ],
        ),
      ),

      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 350,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 0.5),
                        ),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              canvasColor: const Color.fromARGB(255, 247, 247,
                                  245), // background color for the dropdown items
                              buttonTheme: ButtonTheme.of(context).copyWith(
                                alignedDropdown:
                                true, //If false (the default), then the dropdown's menu will be wider than its button.
                              )),
                          child: const LiveCategoryDropdown(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Container(
                        // padding: const EdgeInsets.only(
                        //   top: 15,
                        // ),
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                        height: MediaQuery.of(context).size.height,
                        child: GridView.count(
                            crossAxisCount: 1,
                            crossAxisSpacing: 15.0,
                            mainAxisSpacing: 15.0,
                            shrinkWrap: true,
                            childAspectRatio: (80 / 20),
                            children: [
                              ...List.generate(
                                15,
                                    (index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Container(
                                        child: const LiveChannelPoster()
                                    ),
                                  );
                                },
                              ),

                            ])
                      ),

                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
