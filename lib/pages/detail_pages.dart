import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travely/models/providertheme.dart';
import 'package:travely/models/vacation.dart';
import 'package:travely/pages/success.dart';

class DetailPage extends StatefulWidget {
  final Vacay vacat;
  DetailPage(this.vacat);
  @override
  _DetailPageState createState() => _DetailPageState(vacat);
}

class _DetailPageState extends State<DetailPage> {
  Vacay vacat;
  _DetailPageState(this.vacat);
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      backgroundColor:
          (themeChange.darke == true) ? Color(0xff252525) : Color(0xffF9F9FC),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.asset(
                    vacat.url,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: (MediaQuery.of(context).size.height / 2 + 40),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 30,
                    right: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/back.png',
                          width: 13,
                          height: 21,
                        ),
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                      ),
                      Image.asset(
                        'images/saved.png',
                        color: Colors.white,
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(
                    50,
                  ),
                ),
                color: (themeChange.darke == true)
                    ? Color(0xff1A1A1A)
                    : Color(0xffFFFFFF),
              ),
              padding: EdgeInsets.only(
                left: 30,
                top: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vacat.name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        (themeChange.darke == true)
                            ? 'images/blackstar.png'
                            : 'images/superstar.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        vacat.reviews,
                        style: GoogleFonts.poppins(
                          color: (themeChange.darke)
                              ? Color(0xffF9F9FC)
                              : Color(0xff282948),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        (themeChange.darke == true)
                            ? 'images/darkcloud.png'
                            : 'images/cloudy.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        vacat.weather + "ºC",
                        style: GoogleFonts.poppins(
                          color: (themeChange.darke)
                              ? Color(0xffF9F9FC)
                              : Color(0xff282948),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        (themeChange.darke == true)
                            ? 'images/blackplane.png'
                            : 'images/airplane.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        vacat.flyDate,
                        style: GoogleFonts.poppins(
                          color: (themeChange.darke)
                              ? Color(0xffF9F9FC)
                              : Color(0xff282948),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                bottom: 5,
              ),
              child: Text(
                "Description",
                style: GoogleFonts.poppins(
                  color: (themeChange.darke)
                      ? Color(0xffFFFFFF)
                      : Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                vacat.description, 
                style: GoogleFonts.poppins(
                  color: (themeChange.darke)
                      ? Color(0xffFFFFFF).withOpacity(0.7)
                      : Color(0xff6A6A6A),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              color:
                  (themeChange.darke) ? Color(0xff1A1A1A) : Color(0xffFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting From",
                        style: GoogleFonts.poppins(
                          color: (themeChange.darke)
                              ? Color(0xffFFFFFF)
                              : Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$${vacat.price}",
                        style: GoogleFonts.poppins(
                          color: (themeChange.darke)
                              ? Color(0xffFEBE02)
                              : Color(0xff432FB3),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      child: Text(
                        "Book Now",
                        style: GoogleFonts.poppins(
                          color: Color(0xffFFFFFF),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 13),
                        primary: Color(0xff432FB3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Success();
                            },
                          ),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
