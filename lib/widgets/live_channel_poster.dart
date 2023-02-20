import 'package:flutter/material.dart';

class LiveChannelPoster extends StatefulWidget {
  const LiveChannelPoster({super.key});

  @override
  State<LiveChannelPoster> createState() => _LiveChannelPosterState();
}

class _LiveChannelPosterState extends State<LiveChannelPoster> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      // padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.grey,
        color: Color.fromRGBO(41, 41, 41, 10)
        // border: Border(
        //   left: BorderSide(
        //     color: Colors.green,
        //     width: 3,
        //   ),
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Container(
                height: 45,
                width: 40,
margin: EdgeInsets.only(right: 15),
// padding: EdgeInsets.only(right: 15),
                // color: Colors.lime,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/livechannel.webp'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                // color: Colors.deepOrange,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Coronavirus Pandemic',
                      style:  TextStyle(

                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.5,
                        fontSize: 12,
                      ),

                    ),
                    Text(
                      'The Reader',
                      style:  TextStyle(
                        color: Color.fromRGBO(66, 66, 66, 10),
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.5,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Next: The Good German',
                      style:  TextStyle(
                        color: Color.fromRGBO(66, 66, 66, 10),
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.5,
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
          const Text(
            '10:24 - 12:29',
            style:  TextStyle(
                color: Color.fromRGBO(66, 66, 66, 10),
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
              letterSpacing: 0.5,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
