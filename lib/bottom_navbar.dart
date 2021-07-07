import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travely/models/providertheme.dart';
import 'package:travely/pages/homepage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'pages/user_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Map<String, Object>> _pages;
  int _selectedIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      {
        'page': HomePage(),
      },
      {
        'page': HomePage(),
      },
      {
        'page': HomePage(),
      },
      {
        'page': UserPage(),
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        color: themeChange.darke ? Color(0xff252525) : Color(0xffF4F5F6),
        child: SalomonBottomBar(
          margin: (_selectedIndex == 1)
              ? EdgeInsets.only(
                  top: 18,
                  bottom: 15,
                  left: 30,
                  right: 10,
                )
              : EdgeInsets.only(top: 18, bottom: 15, left: 30, right: 30),
          curve: Curves.ease,
          duration: Duration(milliseconds: 400),
          onTap: _selectedPage,
          selectedItemColor:
              themeChange.darke ? Color(0xffFEC622) : Color(0xff6A5EE8),
          currentIndex: _selectedIndex,
          items: [
            SalomonBottomBarItem(
              icon: Image.asset(
                'images/home.png',
                width: 25,
                height: 25,
                color: (_selectedIndex == 0)
                    ? themeChange.darke
                        ? Color(0xffFEC622)
                        : Color(0xff6A5EE8)
                    : Color(0xffD5D5E1),
              ),
              title: Text(
                "Home",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:
                      themeChange.darke ? Color(0xffFEC622) : Color(0xff6A5EE8),
                ),
              ),
            ),
            SalomonBottomBarItem(
              icon: Image.asset(
                'images/bell.png',
                width: 25,
                height: 25,
                color: (_selectedIndex == 1)
                    ? themeChange.darke
                        ? Color(0xffFEC622)
                        : Color(0xff6A5EE8)
                    : Color(0xffD5D5E1),
              ),
              title: Text(
                "Notification",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:
                      themeChange.darke ? Color(0xffFEC622) : Color(0xff6A5EE8),
                ),
              ),
            ),
            SalomonBottomBarItem(
              icon: Image.asset(
                'images/Menu.png',
                width: 25,
                height: 25,
                color: (_selectedIndex == 2)
                    ? themeChange.darke
                        ? Color(0xffFEC622)
                        : Color(0xff6A5EE8)
                    : Color(0xffD5D5E1),
              ),
              title: Text(
                "Detail ",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:
                      themeChange.darke ? Color(0xffFEC622) : Color(0xff6A5EE8),
                ),
              ),
            ),
            SalomonBottomBarItem(
              icon: Image.asset(
                'images/Setting.png',
                width: 25,
                height: 25,
                color: (_selectedIndex == 3)
                    ? themeChange.darke
                        ? Color(0xffFEC622)
                        : Color(0xff6A5EE8)
                    : Color(0xffD5D5E1),
              ),
              title: Text(
                "Settings",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:
                      themeChange.darke ? Color(0xffFEC622) : Color(0xff6A5EE8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
