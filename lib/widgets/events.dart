import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travely/models/even.dart';

class Events extends StatelessWidget {
  final Event event;
  Events({this.event});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 30,
      ),
      child: Stack(
        children: [
          Image.asset(
            event.imageURL,
            width: 230,
            height: 205,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.name,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset(
                      'images/map.png',
                      width: 15,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      event.location,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
