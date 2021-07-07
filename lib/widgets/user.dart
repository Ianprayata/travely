import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travely/models/providertheme.dart';

class User extends StatelessWidget {
  final UserModels user;
  User({this.user});
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
        right: 30,
        left: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            user.name,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color:
                  (themeChange.darke) ? Color(0xffFFFFFF) : Color(0xff282948),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: (themeChange.darke) ? Color(0xffFFFFFF) : Color(0xff282948),
          ),
        ],
      ),
    );
  }
}

class UserModels {
  String name;
  UserModels({this.name});
}
