import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travely/models/providertheme.dart';
import 'package:travely/widgets/user.dart';
import 'package:travely/pages/thememode.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                  30,
                  10,
                  10,
                  20,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffD5D5E1).withOpacity(0.1),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'images/ian.png',
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Ian Prayata",
                          style: GoogleFonts.poppins(
                            color: (themeChange.darke)
                                ? Color(0xffFFFFFF)
                                : Color(0xff282948),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "@ianprayata",
                          style: GoogleFonts.poppins(
                            color: (themeChange.darke)
                                ? Color(0xffFFFFFF)
                                : Color(0xff282948).withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account',
                          style: GoogleFonts.poppins(
                            color: (themeChange.darke)
                                ? Color(0xffFFFFFF)
                                : Color(
                                    0xff282948,
                                  ),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          child: User(
                            user: UserModels(name: "Edit Profile"),
                          ),
                        ),
                        User(
                          user: UserModels(name: "Your Tickets"),
                        ),
                        User(
                          user: UserModels(name: "Help"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'General',
                          style: GoogleFonts.poppins(
                            color: (themeChange.darke)
                                ? Color(0xffFFFFFF)
                                : Color(
                                    0xff282948,
                                  ),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        User(
                          user: UserModels(name: "Privacy & Policy"),
                        ),
                        User(
                          user: UserModels(name: "Terms of Service"),
                        ),
                        User(
                          user: UserModels(name: "Rate App"),
                        ),
                        Text(
                          'Display',
                          style: GoogleFonts.poppins(
                            color: (themeChange.darke)
                                ? Color(0xffFFFFFF)
                                : Color(
                                    0xff282948,
                                  ),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Themes(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
