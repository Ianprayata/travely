import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travely/models/City.dart';
import 'package:travely/models/even.dart';
import 'package:travely/models/providertheme.dart';
import 'package:travely/models/vacation.dart';
import 'package:travely/widgets/city_card.dart';
import 'package:travely/widgets/events.dart';
import 'package:travely/widgets/vacay.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeDataProvider themeChange = Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 15,
                right: 30,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'images/ian.png',
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Ian",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: (themeChange.darke == true)
                              ? Color(0xffFFFFFF)
                              : Color(0xff282948),
                        ),
                      ),
                      Text(
                        "Where are you going?",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: (themeChange.darke == true)
                              ? Color(0xffFFFFFF).withOpacity(0.6)
                              : Color(0xff515151),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'images/search_icon.png',
                    height: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                "Let The Journey\nBegin Here!",
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  color: (themeChange.darke == true)
                      ? Color(0xffFFFFFF)
                      : Color(0xff282948),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 22,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "All",
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFEBE02)
                          : Color(0xff432FB3),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Asia",
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF).withOpacity(0.5)
                          : Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "America",
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF).withOpacity(0.5)
                          : Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Africa",
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF).withOpacity(0.5)
                          : Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Europe",
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF).withOpacity(0.5)
                          : Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Australia",
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF).withOpacity(0.5)
                          : Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Countries",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  CityCard(
                    city: City(
                        imageUrl: 'images/bali.png',
                        name: "Bali",
                        isFavorite: true),
                  ),
                  CityCard(
                    city: City(
                        imageUrl: 'images/paris.png',
                        name: "Paris",
                        isFavorite: false),
                  ),
                  CityCard(
                    city: City(
                        imageUrl: 'images/england.png',
                        name: "London",
                        isFavorite: false),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ongoing Events",
                    style: GoogleFonts.poppins(
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      color: Color(0xff808080),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 205,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 26,
                  ),
                  Events(
                    event: Event(
                        imageURL: 'images/brazil.png',
                        name: "Rio Carnival, Rio\nDe Janeiro",
                        location: "Brazil"),
                  ),
                  Events(
                    event: Event(
                        imageURL: 'images/japan.png',
                        name: "Sapporo Snow\nFestival",
                        location: "Japan"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: (themeChange.darke == true)
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      color: Color(0xff808080),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 15,
              ),
              child: Column(
                children: [
                  Vacation(
                    vacat: Vacay(
                        name: "Uyuni Salt Flats",
                        url: 'images/uyuni.jpg',
                        place: "Bolivia, America",
                        reviews: "4.50 ",
                        people: "(250K)",
                        flyDate: "1 July",
                        price: "1000-3000",
                        weather: "30",
                        description:
                            "Uyuni salt flat is the world's largest salt flat. The salt flakes was formed of a result of transformations between several prehistoric lakes. It is covered by a few meters of salt crust, which has an extraordinary flatness with the average elevation variations within one meter over the entire area of the Salar."),
                  ),
                  Vacation(
                    vacat: Vacay(
                        name: "Disneyland",
                        url: 'images/disneyland.jpg',
                        place: "Shanghai, China",
                        reviews: "4.75 ",
                        people: "(100K)",
                        flyDate: "1 July",
                        price: "1000-3000",
                        weather: "30",
                        description: "Disneyland"),
                  ),
                  Vacation(
                    vacat: Vacay(
                        name: "Kelingking Beach",
                        url: 'images/kelingking.png',
                        place: "Bali, Indonesia",
                        reviews: "4.83 ",
                        people: "(16K)",
                        flyDate: "30 June",
                        price: "300-500",
                        weather: "26",
                        description:
                            "Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing."),
                  ),
                  Vacation(
                      vacat: Vacay(
                    name: "Alimatha Island",
                    url: 'images/alimata.png',
                    place: "Maldives",
                    reviews: "4.63",
                    people: "(1M)",
                    flyDate: "1 July",
                    price: "500-3000",
                    weather: "30",
                    description: "",
                  )),
                  Vacation(
                    vacat: Vacay(
                      name: "Ama Dablam Mountain",
                      url: 'images/mountain.jpg',
                      place: "Khumbu, Nepal",
                      reviews: "4.52 ",
                      people: "(30k)",
                      flyDate: "11 July",
                      price: "500",
                      weather: "8",
                      description: "",
                    ),
                  ),
                  Vacation(
                    vacat: Vacay(
                        name: "Peyto Lake",
                        url: 'images/peyta.png',
                        place: "Alberta, Canada",
                        reviews: "4.79 ",
                        people: "(50k)",
                        flyDate: "1 July",
                        price: "100",
                        weather: "30",
                        description: ""),
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
