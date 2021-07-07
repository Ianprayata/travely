import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

import 'package:provider/provider.dart';
import 'package:travely/models/providertheme.dart';

class Themes extends StatefulWidget {
  @override
  _ThemesState createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return ListTileSwitch(
      switchActiveColor: Color(0xff252525),
      value: themeChange.darke,
      onChanged: (value) {
        setState(
          () {
            themeChange.themevalue = value;
          },
        );
      },
      title: Text(
        "Dark Mode",
        style: GoogleFonts.poppins(
          color: themeChange.darke ? Color(0xffFFFFFF) : Color(0xff000000),
          fontSize: 16,
        ),
      ),
    );
  }
}
