import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travely/models/providertheme.dart';
import 'package:travely/models/vacation.dart';
import 'package:travely/pages/detail_pages.dart';

class Vacation extends StatefulWidget {
  final Vacay vacat;
  Vacation({this.vacat});
  @override
  _VacationState createState() => _VacationState(vacat: vacat);
}

class _VacationState extends State<Vacation> {
  Vacay vacat;
  _VacationState({this.vacat});
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return DetailPage(vacat);
          }));
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 25,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                child: Image.asset(
                  vacat.url,
                  width: 130,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vacat.name,
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/starr.png',
                        width: 20,
                      ),
                      Text(
                        "${vacat.reviews + vacat.people}",
                        style: GoogleFonts.poppins(
                          color: (themeChange.darke == true)
                              ? Color(0xffFFFFFF)
                              : Color(0xff000000).withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    vacat.place,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                    ),
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
