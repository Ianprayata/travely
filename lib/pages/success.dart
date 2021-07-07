import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travely/bottom_navbar.dart';
import 'package:travely/models/providertheme.dart';

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/ilustration.png',
                  width: 250,
                  height: 150,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "What a Beautiful Day!",
                  style: GoogleFonts.poppins(
                    color: themeChange.darke
                        ? Color(0xffFFFFFF)
                        : Color(0xff000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "At the moment, Our team is proceeding your orders. We will notify you for the next procedures.",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: themeChange.darke
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            ElevatedButton(
              child: Text(
                "Back to Home",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BottomNavBar();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary:
                    themeChange.darke ? Color(0xffF56703) : Color(0xff6A5EE8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
