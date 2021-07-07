import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travely/models/City.dart';
import 'package:travely/models/providertheme.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard({this.city});
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 120,
                ),
              ),
              (city.isFavorite == true)
                  ? Positioned(
                      top: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            20,
                          ),
                        ),
                        child: Container(
                          width: 64,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                            ),
                            color: (themeChange.darke == true)
                                ? Color(0xffFEBE02)
                                : Color(0xff432FB3),
                          ),
                        ),
                      ),
                    )
                  : Container(),
              (city.isFavorite == true)
                  ? Positioned(
                      right: 20,
                      top: 6,
                      child: Image.asset(
                        'images/star.png',
                        width: 18,
                        height: 18,
                      ),
                    )
                  : Container(),
            ],
          ),
          Container(
            alignment: Alignment.center,
            width: 120,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  20,
                ),
              ),
              color: (themeChange.darke == true)
                  ? Color(0xffFEBE02)
                  : Color(0xffF4F5F6),
            ),
            child: Text(
              city.name,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff1A1A1A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
